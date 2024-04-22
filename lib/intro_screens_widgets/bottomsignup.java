lass bottomsignup extends StatelessWidget {
  const bottomsignup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?",
            style: TextStyle(
              color: Colors.purple[400],
              fontSize: 18
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SignUpScreen()
              ));
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }
}
