
window.onload = () => { 
    let button = document.querySelector("#btn"); 
  
    // Function for calculating BMI 
    button.addEventListener("click", calculateBMI); 
}; 
  
function calculateBMI() { 
  
    /* Getting input from user into height variable. 
    Input is string so typecasting is necessary. */
    let height = parseInt(document 
            .querySelector("#height").value); 
  
    /* Getting input from user into weight variable.  
    Input is string so typecasting is necessary.*/
    let weight = parseInt(document 
            .querySelector("#weight").value); 
  
    let result = document.querySelector("#result"); 
  
    // Checking the user providing a proper 
    // value or not 
    if (height === "" || isNaN(height))  
        result.innerHTML = "Provide a valid Height!"; 
  
    else if (weight === "" || isNaN(weight))  
        result.innerHTML = "Provide a valid Weight!"; 
  
    // If both input is valid, calculate the bmi 
    else { 
  
        // Fixing upto 2 decimal places 
        let bmi = (weight / ((height * height)  
                            / 10000)).toFixed(2); 
  
        // Dividing as per the bmi conditions 
        if (bmi < 18.5) result.innerHTML = 
            `Your Body Mass Index is : <span>${bmi}</span>. This is considered UnderWeight.`; 
  
        else if (bmi >= 18.5 && bmi < 24.9)  
            result.innerHTML =  
            `Your Body Mass Index is : <span >${bmi}</span>. This is considered Healthy.`;

        else if (bmi >= 25.0 && bmi < 29.9)  
            result.innerHTML =  
             `Your Body Mass Index is : <span>${bmi}</span>. This is considered Overweight.`;
  
        else result.innerHTML = 
             `Your Body Mass Index is : <span>${bmi}</span>. This is considered Obese.`; 
    } 
}

 const btnScrollToTop = document.querySelector("#btnScrollToTop");

        btnScrollToTop.addEventListner("click", function() {

          window.scrollTo({
            top: 0,
            left: 0,
            behavior: "smooth"
          });

        });