class Messages{
  //authantication_controller
  static const String message_email_invalid = "Entered Email is Invalid";
  static const String message_email_Disabled = "Entered Email is Disabled";
  static const String message_email_passwodnotvalid = "Entered Password is wrong";
  static const String message_email_ath = "Error in Authentication";
  static const String email_credential_invalid = "Credential is Invalid";
  static const String email_operation_notallowd = "Operation Not Allowed";
  static const String user_disable_message = "User Disabled";
  static const String user_notfound_message = "User Not Found";
  static const String user_passwordwrong_message = "Entered Password is wrong";
  static const String user_autherror_message = "Error in Authentication";
  static const String  facebook_autherror_message = "Error in Authentication";
  static const String  package_missing = "Package Name is Missing";
  static const String  url_missing = "Missing Continue Url";
  static const String   bundle_missing = "Missing Bundle Id";
  static const String  invalid_continue_url = "Invalid Continue Url";
  static const String  unauthorized_continue_url = "Unauthorized Continue Url";
  static const String  email_notexist = "Email Not Exist";
  static String authantication_method_message(String method) {
   return  "This Email is Created with ${method}\nSo Login With ${method}";
  }
  static String email_already_exist(List method) {
    return  "Account Already Exist with ${method}";
  }

//data_controller
  static const String  location_permission = "Please turn on Location Permission";//location_scrren
  static const String  location_service = "Please turn on Location Service";//location_scrren

  //sportinity_controller
  static const String  no_more_swipes = "No More Swipes";//user_card

  //bottombar
  static const String  no_user = "No Users";//sportinity_screen(2)
  static const String  no_smatches = "No More Smatchs";//user_card
 //otp_login_screen
  static const String  try_again = "Try Again";
  static const String  no_internet = "No internet Connection";
  static const String  otp_sent = "OTP sent to your mobile";

  //imageinfo_screen
  static const String  image_select = "Minimum 1 Image is Required for Continue";


  //filter_bottom_sheet_sportinity
  static const String  interst_select="Maximum 5 interests Can Be Selected";

  //filter_bottom_sheet_sportiplace
  static const String  facilities_select="Maximum 5 facilities Can Be Selected";
  //myapp
  static const String  storage_permission="Please turn on storage permission";

  //user_profile_screen
  static const String  uploading="Uploading...";
  static const String upload_success="Upload Successfull";

  //Login dialog

  static const String   passwordsent =
      "A Mail Successfully Sent on your email, try login again after password reset";

  static const String error_mail = "Error in Sending Mail";
  static const String welcome_txt = 'Welcome back to';
  static const String sportiwe = 'to Sportiwe.';
  static const String enter_your_password ='Please Enter your Password';
 static const String password_empty_error="Password Cannot be empty";//signup_dialog(2)
 static const String password_lenth="Length must be 6 or more";
 static const String hint_password ='Password';//signup_dialog(2)
 static const String login ='Login';
 static const String forget_password='Forget Password?';

 // Signup_dialog
 static const String create='Please Create a';
 static const String password_authentication='Please make sure password\ncontain 1 special symbol.';
 static const String password_error_message= "Password must contain 8 - 13 Characters including Digit, Special Character and Upper/lowercase";
 static const String password_not_match='Passwords not matched';
 static const String password_confirm='Confirm Password';
 static const String signup="Signup";

 //sportinity_screen

  static const String profile_complete="Complete Your Profile";
  static const String see_matching="To see matching details please\ncomplete your profile";


  //chat_room_model
  static const String search='Search';//chat_room_screen_loader
  static const String chat_clear='Clear Chat';//chat_room_screen_loader
  static const String mute_notification='Mute Notification';//chat_room_screen_loader
  static const String unmute_notification='Unmute Notification';//chat_room_screen_loader
  static const String report='Report';//chat_room_screen_loader
  static const String unmatch='Unmatch';//chat_room_screen_loader
  static const String reportAndBlock='Report and Block';//chat_room_screen_loader
  static const String message_here='Enter your message here....';
  static const String no_recents='No Recents';
  static const String chats="Chats";
  static const String new_message="New Message";
  static const String more_info ="Tap For More Information";
  static const String search_name_chats='Search by Name';
  static const String no_chats="No Chats";
  //match diloge
  static const String it_a_match ="It's A Match";

  //MyCupertinoAlertDialogWidget
  static const String cancel="Cancel";//user_profile_location_screen
  static const String ok="Ok";

  //topbar
 static const String nity= "Nity";//notification_screen //shopping_screen
 static const String place= "Place";//notification_screen//shopping_screen
 static const String sporti="Sporti";//notification_screen(2)//shopping_screen(2)

//update_version_dialog
 static const String update='Update';
  static const String remind_later='Remind Me Later';

  //notification_screen
  static const String notification="Notification";
  static const String no ="No";
  static const String boom="Boom";
  static const String heart="💖";
  static const String today="Today | ";
  static const String yesterday="Yesterday | ";
  static const String dateformate="HH:mm";
  static const String long_dateformate="HH:mm | dd MMM";
  static const String very_long_dateformate="HH:mm | dd MMM yy";

  //setting_screen
 static const String setting_screen= "Setting Screen";

 //shopping_screen
  static const String shopping_dispose="Shopping Screen Dispose";
  static const String order_id="Order Id :";//(3)
  static const String order_time_date='On Sun, 09 Sep2021 6:30pm';
  static const String membership_red='MemberShip Upgrade - Sportiwe Red Member';
  static const String membership_red_subtext= 'yuvn viren skdjfja kahf dkah ajsdhfa ajskdhfa  hdjsafh  asjdhf kas ajshdf lkjashdf ajklh jsahdf jkasdhf  akjsd';
  static const String rs_symbol="₹";//(3)
  static const String  new_supper_like_add='New Super-Likes Added';
  static const String suppelike_subtitle='yuvn viren skdjfja kahf dkah ajsdhfa ajskdhfa  hdjsafh  asjdhf kas ajshdf';
  static const String address='Address : ';//section_selection_bottom_sheet_dialog//venue_detail_screen//filter_bottom_sheet_sportiplace
  static const String timings='Timings : ';//section_selection_bottom_sheet_dialog////venue_detail_screen
  static const String redeem_code='Redeem Code : ';
  static const String date ='date';//(2)
  static const String show='Show';
  static const String venue_details='Venue Details';
  static const String contact_details='Contact Details :';
  static const String   email='Email :';
  static const String venue_intruction='Instruction given by Venue: ';
  static const String offer_valid = 'Offer Valid for one Month';
  static const String worning_misbehaviour='Any kind of misbehaviour will not be entertained';
  static const String please_reas_instruction='Please read all the instruction';

//filter_botton_sheet_sportinity
  static const String filters='Filters';//filter_bottom_sheet_sportiplace
  static const String select_interest="Select Interest :";
  static const String gender="Gender :";
  static const String age="Age :";
  static const String location_radius="Location & Radius :";
  static const String add='Add';
  static const String search_interests='Search Interests';
  static const String male='Male';//user_profile_screen
  static const String female="Female";//user_profile_screen
  static const String others="Others";//user_profile_screen
  static const String everyone="Everyone";
  static const String clear_all="Clear all";//filter_bottom_sheet_sportiplace
  static const String apply='Apply';//filter_bottom_sheet_sportiplace
  //user_card
  static const String about_me="About Me";//user_profile_screen
  static const String about_me_substring="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ";
static const String interests="Interests";

//filter_bottom_sheet_sportiplace
  static const String sport_facilities="Sport Facilities : ";
  static const String ratings="Ratings : ";
  static const String location='Location : ';//
  static const String location_name = "Vadodara,Gujarat";
  static const String other_facilities='Other Facilities : ';
  static const String search_facilities='Search Facilities';


  //section_selection_bottom_sheet_dialog
  static const String select_portal="Select a Portal";
  static const String facilities='Facilities :';//venue_detail_screen

  //review_and_ratings
  static const String review_ratings="Review & Ratings";
  static const String write_your_review='Write Your Review : ';
  static const String three_zero="3.0";
  static const String submit="Submit";
  static const String description='Description :';//venue_detail_screen //user_profile_screen
  static const String mobile='Mobile :';//venue_detail_screen //user_profile_screen
  static const String questionary_servey="Questionary Servey";
  static const String ten_sept='10 Sept';
  //sportiplace_screen
  static const String sportiplace_filter_button="sportiPlace_filter_button";
  static const String search_by='Search by name, location, sports';
  static const String no_venues="No Venues";

  //venue_detail_screen
static const String offers= 'Offers';
static const String terms_condition='Terms & Condition';
  static const String monday_to_sunay='Monday to Sunday :  ';
  //home_screen
static const String logout="Logout"; //user_profile_location_screen

//notification_controller
  static const String notification_title_new_smatch="New Smatch";
  static const String notification_title_new_match="New Match";
  static const String notification_title_new_message="New Message";
  static const String notification_description="Tap For More Information";

  //update_user_profile
  static const String update_profile='Update Profile';
  /*static const String upto_profile='Choose upto 5 interest to your profile'; //user_interests_screens //user_interests_screens
  static const String sports= "Sports";
  static const String userMostLiked= "User most liked";*/

  //update_user_interest
  static const String update_interests='Update Interests';
  static const String upto_profile='Choose upto 5 interest to your profile'; //user_interests_screens //user_interests_screens
  static const String sports= "Sports";
  static const String userMostLiked= "User most liked";


  //user_profile_location_screen
  static const String change_location_sure="Are you sure you want to change your location to this location ?";
  static const String location_add="Location add";
  static const String confirm="Confirm";
  static const String current_location="Current Location : ";
  static const String saved_location="Saved Locations : ";
  static const String location_my="My Location :";

  //user_profile_screen
  static const String upload_users="Upload Users";
  static const String profile ="Profile";
  static const String logout_description="Are you sure you want to log out?";
  static const String yes="Yes";
  static const String supper_like="Super Like";
  static const String right_swipe='Right Swipe';
  static const String location_port='Location Port';
  static const String membership='Membership';
  static const String profile_details='Profile Details';
  static const String name_empty="Name Cannot be empty";
  static const String your_name='Enter Your Name';
  static const String description_empty="Description Cannot be empty";
  static const String little_bit='A little bit about you....';
  static const String birth_date_age=' Birth Date & Age';
  static const String profile_picture='Profile Picture';
  static const String confirm_delete="Confirm Delete";
  static const String confirm_delete_description="Are you sure you want to Delete this Picture?";
  static const String profile_set="Set As Profile";
  static const String profile_set_description="Do you want to set this image as profile image?";
  static const String refer_friend='Refer a Friend';
  static const String black="BLACK";
  static const String blue="BLUE";
  static const String red="RED";
  static const String priority_like='Priority Likes,See who Likes you, and more';

//gender_screen
  static const String continue_ ='Continue'; //user_interests_screens
  static const String about_yourself='Tell us more about yourself.';
  static const String identify='Identify ?';
 //imageinfo_screen
  static const String how_do_you='How do you ';
  static const String crop_image='Crop Image';
 //location_screen
  static const String enable='Enable ';
 static const String services= 'services  ';
  static const String live='Tell us where do you live, so we\ncan find matches accordingly.';
  static const String enable_location='Enable Location';
  static const String location_manually='Enter location manually';

  //user_interests_screens
 static const String tell_more= 'Tell us more about';
 static const String your_interests='your interests';

 //user_info_screen
 static const String create_an= 'Create an ';
 static const String account='Account.';
 static const String welcome_aboard='Welcome aboard.';
 static const String t_and_c='Terms and Conditions';
 static const String get_your_details='Let\'s get your details!';
 static const String clicking_box= 'By clicking on this box you are agree to';
  static const String username_empty="Username cannot be Empty";
  static const String username='Username';
  static const String invalid_email_address="Invalid Email Address";
  static const String email_empty="Email Cannot be empty";

  //onboarding
  static const String wide_range="Wide range of";
  static const String sports_community="Sports community";
  static const String onbording_one_description="Get your work done seamlessly\nwithout interruption";
  static const String connect_to_community="Connect to community";
  static const String on_your_finger_swipe="on your finger swipe";
  static const String sporting_venues="Sporting Venues";
  static const String skip="Skip";

  //shopping screen
  static const String no_offers = "No Offers";
  static const String no_orders = "No Orders";
  static const String venue_name = "Venue Name";






}