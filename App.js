// App.js
 
import MyCustomView from './MyCustomView.js';
 
export default class App extends Component {
  state = {
    status: false
  }
 
  onClick = (event) => {
    alert("Received params: " + JSON.stringify(event))
 
    this.setState({status: !this.state.status})
  }
 
  render() {
        return (
          <View style={styles.container}>
              <MyCustomView 
                  status={this.state.status}
                  onClick={this.onClick}
                  style={{ width: 100, height: 100 }} 
              />
          </View>
        );
    }
}

 
const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF',
    }
});