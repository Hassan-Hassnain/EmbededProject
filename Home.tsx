import React, {Component} from 'react';
import {StyleSheet, Text, View, ScrollView, NativeModules, Button, Alert} from 'react-native';

export default class App extends Component{
  
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.text}>Welcome to Light App!!</Text>
        
        <ScrollView>

            <Text style={styles.text}>Welcome to Light App!!</Text>
            <Text style={styles.text}>Welcome to Light App!!</Text>
            <Text style={styles.text}>Welcome to Light App!!</Text>
            
            <Button 
                title= "Test Button"
                onPress={() => console.log ("Button tapped " )} >
                
            </Button>
            <Button 
                title= "Test Button"
                onPress={() => console.log ("Button tapped " )} >
                
            </Button>

        </ScrollView>
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
    height: 40
  }, 
  text: {
    // flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
    fontSize: 25,
    padding: 10,
    margin: 10,
    borderColor: 'black',
    borderWidth: 3
  },
  button: {
    backgroundColor: '#F5FCFF',
    fontSize: 25,
    padding: 10,
    margin: 10,
    borderColor: 'black',
    borderWidth: 3
  },
});