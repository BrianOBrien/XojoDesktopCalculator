#tag Module
Protected Module aModule
	#tag Method, Flags = &h0
		Function LeftPad(extends s As String, totalWidth As Integer, padChar As String = " ") As String
		  If s.Length >= totalWidth Then Return s
		  
		  If padChar = "" Then padChar = " "
		  
		  Var padCount As Integer = totalWidth - s.Length
		  Var ch As String = padChar.Left(1)
		  Var pad As String = ""
		  
		  For i As Integer = 1 To padCount
		    pad = pad + ch
		  Next
		  
		  Return pad + s
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
