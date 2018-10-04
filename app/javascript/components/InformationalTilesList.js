import React from "react";
import PropTypes from "prop-types";

class InformationalTilesList extends React.Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      listData: this.props.listData
    };
  };

  render() {
    let counter = 0;
    let tiles   = [];
    let row     = [];
    let col     = null;

    this.props.listData.map(function(data, index) {
      col = (
        <div className="col-xs-12 col-sm-6 col-md-6 col-lg-6 bottom-margin-md text-center" key={ `tile-list-item-${index}` }>
          <img src={ data.primaryImage } className="tile-primary-image" />
          <div className="tile-lower-section"></div>
        </div>
      );

      row.push(col);
      counter += 1;

      if ( counter >= 2 ) {
        tiles.push((
          <div className="row" key={ `tile-list-row-${index}` }>
            { row }
          </div>
        ));

        counter = 0;
        row     = [];
      };
    });

    return (
      <div className="row">
        <div className="col-sm-12 col-md-12 col-lg-12">
          { tiles }
        </div>
      </div>
    );
  };
};

export default InformationalTilesList;
