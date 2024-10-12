<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Models\Mediaa;
use App\Models\Like;
use App\Models\Comment;
use App\Models\Upload; 
use App\Models\Share; // A Share model if needed
use App\Models\Pengguna; // Menggunakan model Pengguna
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\EditData;
use Illuminate\Support\Facades\Validator; // Import the Validator facade



class HomeController extends Controller
{
    // Fungsi untuk menampilkan form login
    // public function login() 
    // {
    //     echo view('header');
	// 	echo view('login');
    // }

    // // Fungsi untuk menambahkan pengguna
    // public function lock()
    // {
    //     User::create([
    //         'username' => 'elmo',
    //         'password' => '1',
    //     ]);

    //     return "User added successfully!";
    // }

    // Fungsi untuk mengupdate pengguna berdasarkan id
    public function lcok($id)
    {
        $user = User::find($id);

        if ($user) {
            $user->username = 'julioelmo';
            $user->password = '2';
            $user->save();

            return "User updated successfully!";
        } else {
            return "User not found!";
        }
    }

        // Fungsi untuk menampilkan media feed
        public function index()
{
    $userId = session()->get('id');
    $mediaItems = Mediaa::with('comments')->orderBy('created_at', 'DESC')->get();
 
    // Get the logged-in user's ID from the session
    
    // Fetch media items with user information
    $mediaItems = Mediaa::getAllMediaWithUser($userId); // Use the method in your Mediaa model

    // For each media item, add like count and whether the user has liked it
    foreach ($mediaItems as $media) {
        $media->like_count = Mediaa::getLikeCount($media->id); // Get the like count for the media
        $media->user_has_liked = Mediaa::checkIfLiked($media->id, $userId); // Check if the user has liked the media
    }

    // Pass media items to the view
    $data['media'] = $mediaItems;

    // Send the data to the view
    echo view('header');
    echo view('menu');
    echo view('media.tampil', $data);
    echo view('footer');
}

     public function mediaTampil()
     {
        
         // Ambil data media dan user yang berkaitan
         $mediaItems = Mediaa::with('user')->orderBy('created_at', 'DESC')->get();
 
         // Tambahkan jumlah like dan pengecekan apakah user telah memberikan like
         $userId = session('id'); // Ambil ID user dari sesi
 
         foreach ($mediaItems as $media) {
             $media->like_count = $media->likes()->count();
             $media->user_has_liked = $media->likes()->where('id_user', $userId)->exists();
         }
 
         return view('media.tampil', ['media' => $mediaItems]);
        // dd($mediaItems);
     }
 
     public function like($mediaId)
     {
         $userId = session('id');
 
         // Cek apakah user sudah like
         $hasLiked = Like::where('media_id', $mediaId)
                         ->where('id_user', $userId)
                         ->exists();
 
         if (!$hasLiked) {
             // Menambahkan like ke database
             Like::create([
                 'media_id' => $mediaId,
                 'id_user' => $userId,
                 'created_at' => now()
             ]);
         }
 
         return response()->json(['success' => true]);
     }
 
     public function comment(Request $request, $mediaId)
     {
         $commentText = $request->input('comment');
         $userId = session('id');
 
         // Tambahkan komentar
         Comment::create([
             'media_id' => $mediaId,
             'id_user' => $userId,
             'comment_text' => $commentText,
             'created_at' => now()
         ]);
 
         // Redirect kembali ke halaman media dengan anchor
         return redirect()->to('home/mediaTampil#media-' . $mediaId);
     }
  // Display the media page with all media
  public function media()
  {
    // Get the logo data
		// $where = array('logo_id' => '0');
		// $logo['menu'] = $model->getwhere('logo', $where);
      // Fetch all media records
      $media = Mediaa::all();

      // Pass data to the views
      echo view('header');
      echo view('menu');
      echo view('media', [
        'media' => $media
    ]);
      echo view('footer');

  }

  // Handle the file upload and media save process
  
  
    public function upload(Request $request)
    {
        $file = $request->file('media_file');
        $mimeType = $file->getMimeType();
        $description = $request->input('description');

        if ($file) {
            $upload = new Upload(); // Create an instance of the Upload model
            $fileName = $upload->uploadFile($file); // Upload file and get the file name

            // Determine the media type based on the file's MIME type
            if (strpos($mimeType, 'image/') === 0) {
                $type = 'photo';
            } elseif (strpos($mimeType, 'video/') === 0) {
                $type = 'video';
            } else {
                $type = 'unknown'; // Handle other file types if needed
            }
            
            

            // Save media data to the database
            $upload->saveMedia([
                'id_user' => Auth::id(),  // Assuming you're using authentication
                'media_type' => $type,
                'media_path' => $fileName,
                'description' => $description,
            ]);
            

            return redirect()->back()->with('success', 'Media uploaded successfully!');
        }

        return redirect()->back()->with('error', 'Failed to upload media.');
        
        // The view rendering logic will not be reached after a redirect
        // echo view('header');
        // echo view('menu');
        // echo view('media', $data);
        // echo view('footer');
    }
    // Edit media description
    public function editDescription(Request $request, $id)
    {
        $request->validate([
            'description' => 'required|string|max:255'
        ]);

        $media = Upload::findOrFail($id);
        $media->description = $request->input('description');
        $media->save();

        return redirect()->back()->with('success', 'Description updated successfully!');
    }

    // Delete media
    public function deleteMedia($id)
    {
        $media = Upload::findOrFail($id);

        // Delete media file from the public directory
        $mediaPath = public_path('images/' . $media->media_path);
        if (file_exists($mediaPath)) {
            unlink($mediaPath);
        }

        // Delete from database
        $media->delete();

        return redirect()->back()->with('success', 'Media deleted successfully!');
    }
    public function shareMedia($id)
    {
        // Mengambil media berdasarkan ID
        $media = Upload::findOrFail($id);
        
        // Contoh logika untuk "membagikan" media, misal menambahkan status share
        // atau mungkin menghubungkannya ke media sosial (tapi di sini contoh sederhana)
        
        // Redirect kembali ke halaman dengan pesan sukses
        return redirect()->back()->with('success', 'Media telah dibagikan!');
    }
    public function edit_Data()
    {
        // Cek level pengguna dari session
        if (session('level') > 1) {
            // Ambil data logo dari tabel 'logo' berdasarkan logo_id = 1
            $logo = Logo::where('logo_id', 1)->first();

            // Tampilkan view dengan data logo
            echo view('header');
            echo view('menu');
            echo view('edit_data', [
             'menu' => $logo,
          ]);
            echo view('footer');
                  
      
     
        }

}
public function showLoginForm()
{
    return view('auth.login');
}

public function login(Request $request)
{
    $request->validate([
        'username' => 'required',
        'password' => 'required',
    ]);

    // Ambil data user berdasarkan username
    $users = Pengguna::where('username', $request->username)->first();

    // Cek apakah user ada dan passwordnya cocok
    if ($users && $users->password === md5($request->password)) {
        // Login berhasil
        Auth::login($users); // Login user
        return redirect()->intended('home/mediatampil'); // Ganti dengan route yang sesuai
    }

    // Jika login gagal
    return back()->withErrors([
        'username' => 'Username atau password salah.',
    ]);
}


// Menampilkan halaman register
public function showRegisterForm()
{
    return view('auth.register');
}

// Menangani pendaftaran
public function register(Request $request)
{
    // Validasi input
    $validator = Validator::make($request->all(), [
        'username' => 'required|unique:users',
        'password' => 'required|min:2',
        'nama_lengkap' => 'required',
        'jenis_kelamin' => 'required',
    ]);

    // Cek validasi
    if ($validator->fails()) {
        return redirect()->back()->withErrors($validator)->withInput();
    }

    // Hash password menggunakan MD5
    $hashedPassword = md5($request->password); // Hash the password here

    // Membuat pengguna baru
    Pengguna::create([
        'username' => $request->username,
        'password' => $hashedPassword, // Use the hashed password
        'nama_lengkap' => $request->nama_lengkap,
        'jenis_kelamin' => $request->jenis_kelamin,
    ]);

    return redirect()->route('login')->with('success', 'Registration successful. Please login.');
}

// Logout pengguna
public function logout()
{
    Auth::logout();
    return redirect()->route('login');
}


   // Menampilkan halaman form edit data (GET)
   public function editDataForm()
   {
    
        // Ambil data logo dari tabel 'logo' berdasarkan logo_id = 1
        // $logo = Logo::where('logo_id', 0)->first();

        // Tampilkan view dengan data logo
        echo view('header');
        echo view('menu');
        echo view('edit_data');
        echo view('footer');
    
   }

   // Menangani aksi edit data (POST)
   public function aksi_edit_data(Request $request)
{
    $nama = $request->input('nama');
    $icon = $request->file('icon');
    $logo = $request->file('logo');

    $model = new EditData();

    // Proses file icon jika ada
    if ($icon) {
        $model->delete_icon();
        $model->upload_icon($icon);
    }

    // Proses file logo jika ada
    if ($logo) {
        $model->delete_logo();
        $model->upload_logo($logo);
    }

    // Update nama_web jika ada
    if (!empty($nama)) {
        $model->where('logo_id', 1)->update(['nama_web' => $nama]);
    }

    return redirect()->to('home/edit_data')->with('success', 'Data berhasil diupdate');
}

}