import React from "react";
import PropTypes from "prop-types";

class InformationalTilesList extends React.Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      listData: this.props.listData,
      openedTileIndex: null
    };
  };

  openTile(index) {
    if ( index != this.state.openedTileIndex ) {
      this.setState({ openedTileIndex: index }, function() {
        $('html, body').animate({
          scrollTop: ( $('.tile-bottom-section').offset().top - 25 )
        }, 700);
      });
    } else {
      this.setState({ openedTileIndex: null });
    };
  };

  render() {
    let counter   = 0;
    let bottom    = null;
    let bottomOne = null;
    let bottomTwo = null;
    let active    = null;
    let side      = '';
    let divClass  = '';
    let self      = this;
    let tiles     = [];
    let row       = [];
    let col       = null;

    this.props.listData.map(function(data, index) {
      active     = ( self.state.openedTileIndex == index );
      divClass   = ( active ? 'active' : '' );
      col        = (
        <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 no-padding no-margin text-center" key={ `tile-list-item-${index}` }>
          <div className="tile-overlay" onClick={ () => self.openTile(index) }>
            <span> { data.title } </span>
          </div>
          <img
            src={ data.primaryImage }
            className={ `tile-primary-image ${divClass}` }
            onClick={ () => self.openTile(index) }
          />
        </div>
      );

      bottom     = (
        <div className="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <div className={ `tile-bottom-section ${divClass}` }>
            <h3 className="tile-bottom-header">
              { data.title }
            </h3>
            <p className="tile-bottom-text">
              { data.description }
            </p>
          </div>
        </div>
      );

      row.push(col);
      counter += 1;

      if ( counter == 1 ) {
        bottomOne = bottom;
      } else {
        bottomTwo = bottom;
      };

      if ( counter >= 2 ) {
        tiles.push((
          <div className="row" key={ `tile-list-row-${index}` }>
            { row }
            { bottomOne }
            { bottomTwo }
          </div>
        ));

        counter = 0;
        row     = [];
      };
    });

    return (
      <div className="row">
        <div className="col-xs-12 col-sm-12 col-md-12 col-lg-12 bottom-margin-lg bottom-padding-lg">
          { tiles }
        </div>
      </div>
    );
  };
};

export default InformationalTilesList;
