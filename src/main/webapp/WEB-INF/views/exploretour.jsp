<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tour Detail</title>
    <!-- Include Bootstrap CSS and JS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        /* Reset some default table styles */
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        /* Add some spacing and background color to table header */
        th {
            background-color: #f2f2f2;
        }

        /* Add hover effect on table rows */
        tr:hover {
            background-color: #f9f9f9;
        }

        /* Add borders to table rows */
        tr:not(:last-child) {
            border-bottom: 1px solid #ddd;
        }

        /* Add responsive styles for small screens */
        @media screen and (max-width: 768px) {
            table {
                display: block;
                overflow-x: auto;
                white-space: nowrap;
            }

            th, td {
                display: inline-block;
                vertical-align: top;
                border-bottom: none;
                border-right: 1px solid #ddd;
            }

            th {
                min-width: 100px;
            }

            td {
                width: 100%;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }

            tr:not(:last-child) {
                border-bottom: none;
            }

            tr:last-child td {
                border-bottom: 1px solid #ddd;
            }
        }

    </style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs" id="myTab">
                <li class="nav-item">
                    <a href="#home" class="nav-link active" id="home-tab" data-toggle="tab">Overview</a>
                </li>
                <li class="nav-item">
                    <a href="#rates" class="nav-link" id="rates-tab" data-toggle="tab">Rates</a>
                </li>
                <li class="nav-item">
                    <a href="#inclusions" class="nav-link" id="inclusions-tab" data-toggle="tab">Inclusions</a>
                </li>
                <li class="nav-item">
                    <a href="#offeredby" class="nav-link" id="offeredby-tab" data-toggle="tab">Offered By</a>
                </li>
                <!-- Add a new tab for Booking -->
                <li class="nav-item">
                    <a href="#booking" class="nav-link" id="booking-tab" data-toggle="tab">Booking</a>
                </li>

            </ul>
        </div>
        <div class="card-body">
            <div class="tab-content">
                <div class="tab-pane fade show active" id="home">
                    <%-- Display Overview tab content --%>
                    <h2>${tour.tour_name} </h2>
                    <div id="imageCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#imageCarousel" data-slide-to="1"></li>
                            <li data-target="#imageCarousel" data-slide-to="2"></li>
                        </ul>

                        <!-- Slides -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="/images/${tour.image1}" alt="${tour.tour_name}" class="d-block w-100">
                            </div>
                            <div class="carousel-item">
                                <img src="/images/${tour.image2}" alt="${tour.tour_name}" class="d-block w-100">
                            </div>
                            <div class="carousel-item">
                                <img src="/images/${tour.image3}" alt="${tour.tour_name}" class="d-block w-100">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="carousel-control-prev" href="#imageCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#imageCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <p>${tour.description}</p>
                    <!-- Update the "google map" section -->
                    <div id="map-canvas">
                        <jsp:include page="maptest.jsp"></jsp:include>
                    </div>
                    <input type="text" id="searchInput" placeholder="Search for a location...">
                    <button onclick="searchLocation()">Search</button>


                </div>

                <div class="tab-pane fade" id="rates">
                    <%-- Display Rates tab content --%>

                    <table>
                        <thead><b>Rates per Person</b></thead>
                        <tr>
                            <th colspan="2">Start date</th>
                            <th>Single</th>
                            <th>2 people</th>
                            <th>3 people</th>
                            <th>4 people</th>
                            <th>5 people</th>
                            <th>6 people</th>
                        </tr>
                        <tr>
                            <td colspan="2"><?php echo $row2['starting_date'] ?></td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                            <td>$</td>
                        </tr>

                    </table>
                </div>


                <div class="tab-pane fade" id="inclusions">
                    <%-- Display Inclusions tab content --%>
                        <h5 class="card-title" style="text-align: left;">Included</h5>
                        <ul>
                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>Park-fees</p>
                                    <p style="margin-top: -15px; color:grey;">
                                        (For non-residents)
                                    </p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>All Activities</p>
                                    <p style="margin-top: -15px; color:grey;">
                                        (Unless labeled as optional)
                                    </p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>All Accomodation</p>
                                    <p style="margin-top: -15px; color:grey;">
                                        (Unless listed as upgrade)
                                    </p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>A professional driver/guide</p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>All Taxes/VAT</p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>Roundtrip airport transfer
                                    </p>
                                </div>
                            </li>
                        </ul>

                        <h5 class="card-title" style="text-align: left;">Excluded</h5>
                        <ul>
                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>Additional accommodation before and at the end of the tour
                                    </p>

                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>Tips</p>
                                    <p style="margin-top: -15px; color:grey;">
                                        (Tipping guideline US$10.00 pp per day)
                                    </p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>Personal Items</p>
                                    <p style="margin-top: -15px; color:grey;">
                                        (Souvenirs, travel insurance, visa fees, etc.)
                                    </p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>A professional driver/guide</p>
                                </div>
                            </li>

                            <li>
                                <div class="content" style="text-align: left; overflow:auto; ">
                                    <p>Government imposed increase of taxes and/or park fees
                                    </p>
                                </div>
                            </li>
                        </ul>
                </div>
                <div class="tab-pane fade" id="offeredby" >
                    <%-- Display Offered By tab content --%>
                    <h5>Offered By: ${operator.name}</h5>

                    <img src="/images/${operator.image}" width="70px" height="80" alt="${operator.name}"/>
                    <p>Countries: ${operator.countries}</p>
                    <p> ${operator.description}</p>
                    <p>
                        <c:forEach var="i" begin="1" end="${tour.rate}">
                            <span class="fa fa-star" aria-hidden="true" style="color: gold;"></span>
                        </c:forEach>
                    </p>

                </div>
                <!-- Add the Booking tab content -->
                <div class="tab-pane fade" id="booking">
                    <h2>Book Tour</h2>
                    <form action="/bookTour/${tour.id}" method="post" id="booking-form">
                        <div class="form-group">
                            <label for="full_name">Name</label>
                            <input name="full_name" id="full_name" class="form-control" placeholder="Enter your name" required />
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input name="email" id="email" class="form-control" placeholder="Enter your email" required/>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input name="phone" id="phone" class="form-control" placeholder="Enter your phone number" />
                        </div>
                        <div class="form-group">
                            <label for="adults">Number of People</label>
                            <input name="adults" id="adults" class="form-control" placeholder="Enter number of adults" />
                        </div>
                        <div class="form-group">
                            <label for="children">Number of Children</label>
                            <input name="children" id="children" class="form-control" placeholder="Enter number of children" />
                        </div>
                        <div class="form-group">
                            <label for="destination">Destination</label>
                            <input name="destination" id="destination" class="form-control" value="${tour.tour_name}" readonly />
                        </div>
                        <div class="form-group">
                            <label for="start_date">Date</label>
                            <input type="date" name="start_date" id="start_date" class="form-control" placeholder="Enter date of tour" min="${java.time.LocalDate.now()}" />
                        </div>
                        <button type="submit" class="btn btn-primary">Book Now</button>
                    </form>
                </div>

                <!-- Booking Confirmation Modal -->
                <div class="modal fade" id="bookingConfirmationModal" tabindex="-1" role="dialog" aria-labelledby="bookingConfirmationModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="bookingConfirmationModalLabel">Booking Confirmation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p id="booking-destination">Destination: </p>
                                <p id="booking-start-date">Start Date: </p>
                                <p id="booking-full-name">Full Name: </p>
                                <p id="booking-email">Email: </p>
                                <p id="booking-phone">Phone: </p>
                                <p id="booking-adults">Adults: </p>
                                <p id="booking-children">Children: </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div>
        <jsp:include page="review.jsp">
            <jsp:param name="tourName" value="${tour.tour_name}" />
            <jsp:param name="user_email" value="${user_mail}"/>
        </jsp:include>
    </div>

    <h5>Disclaimer</h5>
    <ul>
        <li>This tour is offered by Safari ${tour.tour_operator}, not Tonga.</li>
        <li>This operator reserves the right to change rates advertised on Tonga.
        </li>
        <li>If you request changes to this tour, the advertised rates will likely change.
        </li>
        <li>The exact order, contents and rates of this tour is subject to availability.
        </li>
        <li>If an accommodation is fully booked, the operator will suggest a comparable alternative.
        </li>
    </ul>
</div>

<jsp:include page="footer.jsp"/>
<script src = "/script.js"/>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<!-- Add Bootstrap and jQuery JS -->

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Include jQuery and Bootstrap JS files -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function() {
        $('#booking-form').submit(function(event) {
            // Prevent the form from submitting normally
            event.preventDefault();

            // Get the form data
            var formData = $(this).serialize();

            // Submit the form data using AJAX
            $.ajax({
                url: '/bookTour/${tour.id}',
                type: 'POST',
                data: formData,
                success: function(response) {
                        // Set the booking information in the modal
                        $('#booking-destination').text('Destination: ' + response.destination);
                        $('#booking-start-date').text('Start Date: ' + response.start_date);
                        $('#booking-full-name').text('Full Name: ' + response.full_name);
                        $('#booking-email').text('Email: ' + response.email);
                        $('#booking-phone').text('Phone: ' + response.phone);
                        $('#booking-adults').text('Adults: ' + response.adults);
                        $('#booking-children').text('Children: ' + response.children);

                        // Display the booking confirmation modal
                        $('#bookingConfirmationModal').modal('show');
                        // Set the input field values to empty string
                        $('#full_name').val('');
                        $('#email').val('');
                        $('#phone').val('');
                        $('#adults').val('');
                        $('#children').val('');
                        $('#start_date').val('');

                },
                error: function(xhr, status, error) {
                    if (xhr.status === 401) {
                        window.location.href = '/login';
                    } else {
                        console.log(error);
                    }
                }
            });
        });
    });
</script>





</body>
</html>
