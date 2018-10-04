import React from "react";
import PropTypes from "prop-types";

class ChangingWords extends React.Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      words: this.props.words,
      currentWord: this.props.words[0],
      currentValue: ''
    };
  };

  componentDidMount() {
    this.runAnimation();
  };

  runAnimation() {
    let fullWord          = this.state.currentWord;
    let currentValue      = this.state.currentValue;

    if ( currentValue.length >= fullWord.length ) {
      this.removeLetters();
    } else {
      this.addLetters();
    };
  };

  addLetters() {
    let fullWord          = this.state.currentWord;
    let currentValue      = this.state.currentValue;
    let indexOfNextLetter = currentValue.length;
    let letterToAdd       = fullWord[indexOfNextLetter];
    let self              = this;

    currentValue += fullWord[indexOfNextLetter];

    setTimeout(function() {
      if (self.refs.mounted) {
        self.setState({ currentValue: currentValue }, function() {
          if ( currentValue.length >= fullWord.length ) {
            setTimeout(function() {
              self.removeLetters();
            }, 1000);
          } else {
            self.addLetters();
          };
        });
      };
    }, 125);
  };

  removeLetters() {
    let currentValue = this.state.currentValue;
    let currentWord  = this.state.currentWord;
    let nextValue    = currentValue.slice(0, -1);
    let words        = this.state.words;
    let index        = words.indexOf(currentWord) + 1;
    let nextWord     = null;
    let self         = this;

    setTimeout(function() {
      if (self.refs.mounted) {
        self.setState({ currentValue: nextValue }, function() {
          if ( nextValue.length == 0 ) {
            nextWord = ( index == words.length ? words[0] : words[index] );
            self.setState({ currentWord: nextWord }, function() {
              setTimeout(function() {
                self.addLetters();
              }, 800);
            });
          } else {
            self.removeLetters();
          }
        });
      };
    }, 125);
  };

  render () {
    return (
      <span className="full-width" ref="mounted">
        <span className="base-phrase"> { this.props.basePhrase } </span>
        <span className="changing-words"> { this.state.currentValue } </span>
        <span className="blinking-cursor"></span>
      </span>
    );
  };
};

export default ChangingWords;
