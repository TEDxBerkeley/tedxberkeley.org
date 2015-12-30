class SpeakerBody extends Component {

  // --------------------------------------------------
  // Props
  // --------------------------------------------------
  static get propTypes() {
    return {
      speaker: React.PropTypes.object.isRequired,
    };
  }

  // --------------------------------------------------
  // Styles
  // --------------------------------------------------
  get styles() {
    return {
      container: {
        display: 'flex',
        flexFlow: 'column',
        minHeight: '600px',
        width: '100%',
        backgroundColor: StyleConstants.colors.white,
      },
      quote: {
        flex: 1,
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        fontSize: StyleConstants.fonts.sizes.medium,
      },
      sectionHeader: {
        marginLeft: '16px',
        fontSize: StyleConstants.fonts.sizes.larger,
      },
      line: {
        height: '2px',
        width: '100%',
        marginLeft: '16px',
        marginRight: '16px',
        marginTop: '2px',
        backgroundColor: StyleConstants.colors.black,
      },
      description: {
        flex: 4,
        display: 'flex',
        marginLeft: '16px',
        marginTop: '8px',
        fontSize: StyleConstants.fonts.sizes.medium,
      }
    };
  }

  // --------------------------------------------------
  // Render
  // --------------------------------------------------
  render() {
    return (
      <div style={this.styles.container}>
        <div style={this.styles.quote}> {this.props.speaker.description} </div>
        <div style={this.styles.sectionHeader}> About This Speaker </div>
        <span style={this.styles.line}/>
        <div style={this.styles.description}> {this.props.speaker.description} </div>
        <ActionButtons />
      </div>
    );
  }
}
