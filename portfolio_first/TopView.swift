import SwiftUI

struct TopView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 5.0) {
                    HStack {
                        Image("Icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .padding(.leading, 10)
                    }
                    
                    Text("Linneへようこそ。")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.leading, 20)
                        .padding(.bottom, 10.0)
                    
                    Button(action: {
                        print("Login button tapped")
                    }) {
                        Text("ログイン")
                            .foregroundColor(.gray)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10.0)
                    
                    Button(action: {
                        print("Sign Up button tapped")
                    }) {
                        Text("新規登録")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10.0)
                    
                    Text("Linneをご利用の方は使用上の注意と個人情報の取り扱いについてをお読みいただいてからのご利用をお願いします。また、ログインIDとパスワードをお忘れの方はこちらをタップお願いいたします.")
                        .foregroundColor(.white)
                        .font(.caption)
                        .padding(.top, 5)
                        .padding(.horizontal, 20)
                }
                    .padding(.vertical, 20)
            )
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
