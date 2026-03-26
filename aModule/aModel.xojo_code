#tag Class
Protected Class aModel
Implements  aModule.anInterface
	#tag Method, Flags = &h0
		Sub SendMessage(d as Dictionary)
		  // Part of the DatabaseModule.DataBaseStatsInterface interface.
		  
		  If d Is Nil Then Return
		  If Not d.HasKey("Update") Then Return
		  
		  Var v As Variant = d.Value("Update")
		  
		  If v IsA aModel Then
		    
		    Var stats As aModule.aModel = aModule.AModel(v)
		    
		    Patients  = stats.Patients
		    Studies   = stats.Studies
		    Series    = stats.Series
		    Instances = stats.Instances
		    
		  ElseIf v IsA Dictionary Then
		    
		    Var dd As Dictionary = Dictionary(v)
		    
		    Patients  = dd.Lookup("PatientCount", 0)
		    Studies   = dd.Lookup("StudyCount", 0)
		    Series    = dd.Lookup("SeriesCount", 0)
		    Instances = dd.Lookup("InstanceCount", 0)
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Instances As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Patients As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Series As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Studies As Integer
	#tag EndProperty


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
		#tag ViewProperty
			Name="Studies"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Instances"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Patients"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Series"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
