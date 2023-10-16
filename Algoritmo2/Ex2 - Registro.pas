
	//Fa�a um algoritmo que preencha o cadastro
	//de 10 alunos contendo: nome, CPF,  curso e 
	//m�dia do aluno. O algoritmo deve calcular a
	//m�dia da turma e informar quantos e quem s�o
	//os alunos que possuem m�dia superior a m�dia turma.


Program Ex2_registro ;

const
	qtdAlunos  = 10;
	
	
type Alunos = record
	sNome    : string;
	sCPF  : string;
	sCurso : string;
	rMedia : real;
	bMediaSup : Boolean;
end;

type Estudante = array[1..qtdAlunos]of Alunos;

var
	i      : integer;
	Media  : real;
	Aluno  : Alunos;
	aAluno : Estudante;
	
Begin
		
	//Entrada de Dados
  for i:=1 to qtdAlunos do
  begin
  	write('informe o nome do aluno: ');
  	readln(Aluno.sNome);
  	write('informe o CPF do aluno: ');
  	readln(Aluno.sCPF);
  	write('informe o curso do aluno: ');
  	readln(Aluno.sCurso);
  	write('informe a m�dia do aluno: ');
  	readln(Aluno.rMedia);
  	aAluno[i]:= Aluno;
  	Media:= Aluno.rMedia + Media;
		ClrScr;	
	end;
  
  //Calculo para Media dos Alunos
  Media:= Media / qtdAlunos;
  
  //Estrutura para saber se o aluno tem
	//media superior que a turma
  for i:= 1 to qtdAlunos do
  begin
  	if aAluno[i].rMedia > Media then
  		aAluno[i].bMediaSup:=	True;
  end;
  
  //Saida de Dados
  writeln('------------------');
	writeln('M�DIA GERAL: ',Media:6:2);
  writeln('------------------'); 
  
	for i:= 1 to qtdAlunos do
  begin
    writeln('Nome: ',aAluno[i].sNome);
    writeln('CPF: ',aAluno[i].sCPF);
    writeln('Curso: ',aAluno[i].sCurso);
    writeln('M�dia: ',aAluno[i].rMedia:6:2);
    if aAluno[i].bMediaSup then
    	writeln('M�dia Superior: Sim')
    else
    	writeln('M�dia Superior: N�o');
    writeln('------------------');
  end;
  
  
  
End.