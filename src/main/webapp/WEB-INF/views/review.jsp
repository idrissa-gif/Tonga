<%--
  Created by IntelliJ IDEA.
  User: idrissamahamoudoudicko
  Date: 18/4/2023
  Time: 02:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String tourName = request.getParameter("tourName");
  String userEmail = request.getParameter("user_email");
%>
<!DOCTYPE HTML>
<html>

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>
<div class="container mt-5">
  <div class="card">
    <div class="card-header"><%=tourName%></div>
    <div class="card-body">
      <div class="row">
        <div class="col-sm-4 text-center">
          <h1 class="text-warning mt-4 mb-4">
            <b><span id="average_rating"></span> / 5</b>
          </h1>
          <div class="mb-3">
            <i class="fas fa-star star-light mr-1 main_star"></i>
            <i class="fas fa-star star-light mr-1 main_star"></i>
            <i class="fas fa-star star-light mr-1 main_star"></i>
            <i class="fas fa-star star-light mr-1 main_star"></i>
            <i class="fas fa-star star-light mr-1 main_star"></i>
          </div>
          <h3><span id="total_review"></span> Review</h3>
        </div>
        <div class="col-sm-4">
          <p>
          <div class="progress-label-left"><b>5</b> <i class="fas fa-star text-warning"></i></div>

          <div class="progress-label-right">(<span id="total_five_star_review">0</span>)</div>
          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="five_star_progress"></div>
          </div>
          </p>
          <p>
          <div class="progress-label-left"><b>4</b> <i class="fas fa-star text-warning"></i></div>

          <div class="progress-label-right">(<span id="total_four_star_review">0</span>)</div>
          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="four_star_progress"></div>
          </div>
          </p>
          <p>
          <div class="progress-label-left"><b>3</b> <i class="fas fa-star text-warning"></i></div>

          <div class="progress-label-right">(<span id="total_three_star_review">0</span>)</div>
          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="three_star_progress"></div>
          </div>
          </p>
          <p>
          <div class="progress-label-left"><b>2</b> <i class="fas fa-star text-warning"></i></div>

          <div class="progress-label-right">(<span id="total_two_star_review">0</span>)</div>
          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="two_star_progress"></div>
          </div>
          </p>
          <p>
          <div class="progress-label-left"><b>1</b> <i class="fas fa-star text-warning"></i></div>

          <div class="progress-label-right">(<span id="total_one_star_review">0</span>)</div>
          <div class="progress">
            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="one_star_progress"></div>
          </div>
          </p>
        </div>
        <div class="col-sm-4 text-center">
          <h3 class="mt-4 mb-3">Write Review Here</h3>
          <button type="button" name="add_review" id="add_review" class="btn btn-primary">Review</button>
        </div>
      </div>
    </div>
  </div>
  <div class="mt-5" id="review_content">
    <div id="review_modal" class="modal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Submit Review</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <h4 class="text-center mt-2 mb-4">
              <i class="fas fa-star star-light submit_star mr-1" id="submit_star_1" data-rating="1"></i>
              <i class="fas fa-star star-light submit_star mr-1" id="submit_star_2" data-rating="2"></i>
              <i class="fas fa-star star-light submit_star mr-1" id="submit_star_3" data-rating="3"></i>
              <i class="fas fa-star star-light submit_star mr-1" id="submit_star_4" data-rating="4"></i>
              <i class="fas fa-star star-light submit_star mr-1" id="submit_star_5" data-rating="5"></i>
            </h4>
            <div class="form-group">
              <input type="text" name="target" id="target" class="form-control" value="<%=tourName%>" readonly />
            </div>
            <div class="form-group">
              <input type="text" name="reviewer_name" id="reviewer_name" class="form-control" required/>
            </div>
            <div class="form-group">
              <input type="email" name="user_email" id="user_email" class="form-control" placeholder="Enter Your Email" value="<%=userEmail%>"  />
            </div>
            <div class="form-group">
              <textarea name="message" id="message" class="form-control" placeholder="Type Review Here"></textarea>
            </div>
            <div class="form-group text-center mt-4">
              <button type="button" class="btn btn-primary" id="save_review">Submit</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<script>
  $(document).ready(function() {

    var rating_data = 0;
    var target = $('#target').val();


    $('#add_review').click(function() {

      $('#review_modal').modal('show');

    });

    $(document).on('mouseenter', '.submit_star', function() {

      var rating = $(this).data('rating');

      reset_background();

      for (var count = 1; count <= rating; count++) {

        $('#submit_star_' + count).addClass('text-warning');

      }

    });

    function reset_background() {
      for (var count = 1; count <= 5; count++) {

        $('#submit_star_' + count).addClass('star-light');

        $('#submit_star_' + count).removeClass('text-warning');

      }
    }

    $(document).on('mouseleave', '.submit_star', function() {

      reset_background();

      for (var count = 1; count <= rating_data; count++) {

        $('#submit_star_' + count).removeClass('star-light');

        $('#submit_star_' + count).addClass('text-warning');
      }

    });

    $(document).on('click', '.submit_star', function() {

      rating_data = $(this).data('rating');

    });

    $('#save_review').click(function() {
      var reviewer_name = $('#reviewer_name').val();
      var user_email = $('#user_email').val();
      var message = $('#message').val();
      var date = new Date();
      var timestamp = date.getTime();



      if (user_email == '' || message == '') {
        alert("Please Fill Both Field");
        return false;
      } else {
        $.ajax({
          url: '/submitRating', // Update the URL to the appropriate endpoint
          method: 'POST',
          data: {
            reviewer_name: reviewer_name,
            user_email: user_email,
            message: message,
            target: target,
            rate: rating_data,
            time:timestamp,
          },
          success: function(data) {
            $('#review_modal').modal('hide');
            load_rating_data();
            alert("Thanks for your valuable review !!!");
          },
          error: function(xhr, status, error) {
            if (xhr.status === 401) {
              window.location.href = '/login';
            } else {
              console.log(error)
            }
          }
        })
      }
      document.getElementById("reviewer_name").value = "";
      document.getElementById("user_email").value = "";
      document.getElementById("message").value = "";
    });


    load_rating_data();


    function load_rating_data() {

      $.ajax({
        url: "/getRating/${tour.tour_name}",
        method: "GET",
        data: {
          target: target
        },
        success: function(data) {
          $('#average_rating').text(data['average_rating']);
          $('#total_review').text(data['total_review']);

          var count_star = 0;

          $('.main_star').each(function() {
            count_star++;
            if (Math.ceil(data.average_rating) >= count_star) {
              $(this).addClass('text-warning');
              $(this).addClass('star-light');
            }
          });

          $('#total_five_star_review').text(data['five_star_review']);

          $('#total_four_star_review').text(data['four_star_review']);

          $('#total_three_star_review').text(data['three_star_review']);

          $('#total_two_star_review').text(data['three_star_review']);

          $('#total_one_star_review').text(data['three_star_review']);

          $('#five_star_progress').css('width', (data['five_star_review'] / data['total_review']) * 100 + '%');

          $('#four_star_progress').css('width', (data['four_star_review']/ data['total_review']) * 100 + '%');

          $('#three_star_progress').css('width', (data['three_star_review'] / data['total_review']) * 100 + '%');

          $('#two_star_progress').css('width', (data['two_star_review'] / data['total_review']) * 100 + '%');

          $('#one_star_progress').css('width', (data['one_star_review'] / data['total_review']) * 100 + '%');

          if (data.review_data.length > 0) {
            var html = '';

            for (var count = 0; count < data.review_data.length; count++) {
              html += '<div class="row mb-3">';

              html += '<div class="col-sm-1"><div class="rounded-circle bg-danger text-white pt-2 pb-2"><h3 class="text-center">' + data.review_data[count].user_name.charAt(0) + '</h3></div></div>';

              html += '<div class="col-sm-11">';

              html += '<div class="card">';

              html += '<div class="card-header"><b>' + data.review_data[count].user_name + '</b></div>';

              html += '<div class="card-body">';

              for (var star = 1; star <= 5; star++) {
                var class_name = '';

                if (data.review_data[count].rating >= star) {
                  class_name = 'text-warning';
                } else {
                  class_name = 'star-light';
                }

                html += '<i class="fas fa-star ' + class_name + ' mr-1"></i>';
              }

              html += '<br />';

              html += data.review_data[count].user_review;

              html += '</div>';

              html += '<div class="card-footer text-right">On ' + data.review_data[count].datetime + '</div>';

              html += '</div>';

              html += '</div>';

              html += '</div>';
            }

            $('#review_content').html(html);
          }
        },
        error: function(error) {
          console.log(error);
        }
      })
    }

  });
</script>

</body>

</html>
