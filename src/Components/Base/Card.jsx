import React from "react";

const Card = (props) => {
  return (
    <div
      style={{ width: "600px", border: "1px solid #cccccc" }}
      className="bg-white flex rounded-sm flex-col"
    >
      {props.children}
    </div>
  );
};

export default Card;
