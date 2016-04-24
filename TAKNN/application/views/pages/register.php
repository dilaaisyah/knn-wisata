<?php if(isset($user)):
    $username = $user['username'];
    $firstname = $user['firstname'];
    $lastname = $user['lastname'];
    $email = $user['email'];
else:
    $username = '';
    $firstname = '';
    $lastname = '';
    $email = '';
endif;?>

<div id="content">
    <div class="container register">
        <div class="row margin-vert-30">
            <!-- Register Box -->
            <div class="col-md-6 col-md-offset-3">
                <?php echo form_open('pages/verifyregister', 'class="signup-page"');?>
                    <div class="signup-header">
                        <h2>Register a new account</h2>
                        <p>Already a member? Click
                            <a href="<?php echo base_url().'pages/login/';?>">HERE</a> to login to your account.</p>
                    </div>
                    <?php echo validation_errors(); ?>
                    <label>Username
                        <span class="color-red">*</span>
                    </label>
                    <input class="form-control margin-bottom-20" type="text" name="username" value="<?php echo $username;?>">
                    <label>First Name</label>
                    <input class="form-control margin-bottom-20" type="text" name="firstname" value="<?php echo $firstname;?>">
                    <label>Last Name</label>
                    <input class="form-control margin-bottom-20" type="text" name="lastname" value="<?php echo $lastname;?>">
                    <label>Email Address
                        <span class="color-red">*</span>
                    </label>
                    <input class="form-control margin-bottom-20" type="text" name="email" value="<?php echo $email;?>">
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Password
                                <span class="color-red">*</span>
                            </label>
                            <input class="form-control margin-bottom-20" type="password" name="password">
                        </div>
                        <div class="col-sm-6">
                            <label>Confirm Password
                                <span class="color-red">*</span>
                            </label>
                            <input class="form-control margin-bottom-20" type="password" name="confirm_pass">
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <button class="btn btn-primary" type="submit">Register</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- End Register Box -->
        </div>
    </div>
</div>