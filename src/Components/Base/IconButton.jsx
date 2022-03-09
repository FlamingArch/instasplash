import React from "react";

const IconButton = (props) => {
  return (
    <div
      className={`w-8 h-8 text-${props.color} hover:opacity-60 transition-all`}
    >
      {props.children}
    </div>
  );
};

export default IconButton;
