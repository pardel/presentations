import SwiftUI

struct OutgoingMessageView: View {
    var message: Message
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .trailing) {
                Text(message.sender).padding(.trailing, 10).padding(.bottom, 2).font(Font.caption)
                Text(message.content)
                    .foregroundColor(Color.black)
                    .font(Font.body).padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
                Text(message.status).padding(.leading, 10).padding(.top, 2).font(Font.footnote)
            }
            .padding(.top, 10)
        }
    }
}

struct OutgoingMessageView_Previews: PreviewProvider {
    static var previews: some View {
        OutgoingMessageView(message: Message(id: "2", sender: "Bob", content: "Hello Bucharest", direction: .outgoing, wasDelivered: true, wasRead: false))
    }
}
