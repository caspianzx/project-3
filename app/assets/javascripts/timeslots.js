window.onload = () => {
    if(document.getElementById("salon_id")){
        let salon_id_input = document.getElementById("salon_id")
        salon_id = salon_id_input.value

        let a = document.querySelectorAll('.calendar-day')
        let array = Array.from(a)
        array.forEach(function(day){
            console.log(day.innerHTML)
            let date = day.innerHTML
            day.onclick = () => {
                window.location.assign(`/salons/${salon_id}/timeslots/${date}`)
            };
        });
    };
};

// get '/salons/:id/timeslots' => 'timeslots#index', as: 'timeslots'
// window.location.href