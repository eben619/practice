import React from "react";
export default function Logo(){
    return (
        <>
        <h1>Donation To Pepe</h1>
        <img
        src="https://images.cnbctv18.com/wp-content/uploads/2023/04/pepe-token.jpg?impolicy=website&width=590&height=264"
        alt="Pepe Pic"
        />
     <div>
        <button className="donate-btn" style={{ }}>
            DONATE
        </button>
        <input className="donate-amnt" type="number" />
        
     </div>
        </>
    )
    
}