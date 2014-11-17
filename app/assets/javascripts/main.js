// document.addEventListener('DOMContentLoaded', function(){
//   var stack,
//       cards;

//   cards = [].slice.call(document.querySelectorAll('ul li'))

//   stack = Swing.Stack();

//   cards.forEach(function (targetElement) {
//       // Add card element to the Stack.
//      stack.createCard(targetElement);
//   });

//   // Add event listener for when a card is thrown out of the stack.
//   stack.on('throwout', function (e) {
//       // e.target Reference to the element that has been thrown out of the stack.
//       // e.throwDirection Direction in which the element has been thrown (Card.DIRECTION_LEFT, Card.DIRECTION_RIGHT).

//       console.log('Card has been thrown out of the stack.');
//       console.log('Throw direction: ' + (e.throwDirection == Card.DIRECTION_LEFT ? 'left' : 'right'));
//   });

//   // Add event listener for when a card is thrown in the stack, including the spring back into place effect.
//   stack.on('throwin', function (e) {
//       console.log('Card has snapped back to the stack.');
//   });

// });  // end document 