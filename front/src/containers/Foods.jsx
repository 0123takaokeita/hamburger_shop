import React, { Fragment} from "react";

export const Foods = ({ props }) => {
    return (
        <Fragment>
            フード一覧
            <p>restaurantsId: { props.params.restaurantsId } </p>
        </Fragment>
    )
}
