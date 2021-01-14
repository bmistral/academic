!---------------------------------------------------!
!   Ecriture fichiers de sorties format paraview    !
!---------------------------------------------------!


Module mod_paraview

  Implicit None

  Contains
  
    Subroutine sortie_para(numero,f,P,s)

      !-------------------- Modules -------------------------!
      Use mod_precision
      !------------------------------------------------------!

      Implicit None

      !---------------------Entrées--------------------------!
      Character(len=100), Intent(in) :: numero
      Real(pr), Dimension(:), Intent(in) :: f
      Real(pr), Dimension(:,:), Intent(in) :: P
      Integer, Dimension(:,:), Intent(in) :: s
      !------------------------------------------------------!

      !----------------Variables locales---------------------!
      Integer :: i,nb_noeuds,nb_trig
      Character(len=100) :: fich
      !------------------------------------------------------!


      fich='SORTIES/resultats.'//Trim(Adjustl(numero))//'.vtk'
      Open(unit=1,file=fich)

      nb_trig=Size(f)
      nb_noeuds=Size(p,1)


      Write(1,'(1A26)') '# vtk DataFile Version 2.0'
      Write(1,*) 'TER 1D'
      Write(1,*) 'ASCII'
      Write(1,*) 'DATASET UNSTRUCTURED_GRID'

!!$      Write(1,*) 'POINTS',nb_noeuds,' double'
!!$      Do i=1,nb_noeuds
!!$         Write(1,*) p(i,1),p(i,2),0.0_pr
!!$      End Do
!!$
!!$      Write(1,*) 'CELLS ',nb_trig,nb_trig*4
!!$      Do i=1,nb_trig
!!$         Write(1,*) 3,s(i,1)-1, s(i,2)-1, s(i,3)-1
!!$      End Do
!!$
!!$      Write(1,*) 'CELL_TYPES ',nb_trig
!!$      Do i=1,nb_trig
!!$         Write(1,*) 5
!!$      End Do
!!$
!!$      Write(1,*) 'CELL_DATA',nb_trig
!!$      Write(1,*) 'SCALARS f double'
!!$      Write(1,*) 'LOOKUP_TABLE default'
!!$      Do i=1,nb_trig
!!$         Write(1,*) f(i)
!!$      End Do
!!$
!!$      Close(1)

    End Subroutine sortie_para

End Module mod_paraview
