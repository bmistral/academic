!----------------------------------------!
!        Lecture fichier paramètre       !
!----------------------------------------!

Module mod_lecture

  Implicit None

  Contains
  
    Subroutine lecture_para(nom)

      !-------------------- Modules -------------------------!
      Use mod_precision
      !------------------------------------------------------!
      
      !---------------------Entrées--------------------------!
      Character(len=100), Intent(in) :: nom
      !------------------------------------------------------!

      Open(unit=1,file=nomh)




      Close(1)

    End Subroutine lecture_para
      
End Module mod_lecture
