<div class="container">
    <div class="container">
        <div class="row margin-vert-30">
            <!-- Login Box -->
            <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                <?php echo form_open('pages/verifylogin', 'class="login-page"');?>
                    <div class="login-header margin-bottom-30">
                        <h2>Login to your account</h2>
                    </div>
                    <?php echo validation_errors(); ?>
                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon">
                            <i class="fa fa-user"></i>
                        </span>
                        <input placeholder="Username or Email" class="form-control" type="text" name="username">
                    </div>
                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon">
                            <i class="fa fa-lock"></i>
                        </span>
                        <input placeholder="Password" class="form-control" type="password" name="password">
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12 margin-bottom-10">
                            <button class="btn btn-primary pull-right" type="submit">Login</button>
                        </div>
                    </div>                    
                </form>
            </div>
            <!-- End Login Box -->
        </div>
    </div>
</div>