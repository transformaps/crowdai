// ---------------------- Gems ---------------------- //
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery.remotipart
//= require cocoon
//= require rails.validations
//= require jQuery-File-Upload
//= require remodal
//= require isInViewport
//= require turbolinks
//= require paloma

// ---------------------- Modules ---------------------- //
//= require modules/site
//= require modules/subnav_tabs
//= require modules/inline_validations
//= require modules/rangy_inputs
//= require modules/markdown_editor
//= require modules/flash_messages

// ---------------------- Pages ---------------------- //
//= require pages/dataset_files_index
//= require pages/participants_edit
//= require pages/email_preferences_edit

// -------------------- Controllers ------------------- //
//= require controllers/challenges_controller
//= require controllers/leaderboards_controller


$(document).on('ajax:error', function(xhr, status, error) {
  console.log(status.responseText);
  console.log(error);
});

$(document).on('turbolinks:load', function() {
  $('[data-remodal-id=modal]').remodal();
});

$(document).on('turbolinks:load', function() {
  Paloma.start();
});
