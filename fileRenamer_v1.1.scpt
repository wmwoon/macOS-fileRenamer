FasdUAS 1.101.10   ��   ��    k             l     ��  ��    @ : Choose the folder containing the files you want to rename     � 	 	 t   C h o o s e   t h e   f o l d e r   c o n t a i n i n g   t h e   f i l e s   y o u   w a n t   t o   r e n a m e   
  
 l    	 ����  r     	    l     ����  I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �   ^ C h o o s e   a   f o l d e r   c o n t a i n i n g   t h e   f i l e s   t o   r e n a m e :��  ��  ��    o      ���� 0 
folderpath 
folderPath��  ��        l     ��������  ��  ��        l     ��  ��    &   Get a custom name from the user     �   @   G e t   a   c u s t o m   n a m e   f r o m   t h e   u s e r      l  
  ����  r   
     n   
    !   1    ��
�� 
ttxt ! l  
  "���� " I  
 �� # $
�� .sysodlogaskr        TEXT # m   
  % % � & & D E n t e r   a   c u s t o m   n a m e   f o r   t h e   f i l e s : $ �� '��
�� 
dtxt ' m     ( ( � ) )  ��  ��  ��    o      ���� 0 
customname 
customName��  ��     * + * l     ��������  ��  ��   +  , - , l     �� . /��   . 1 + Get the list of files in the chosen folder    / � 0 0 V   G e t   t h e   l i s t   o f   f i l e s   i n   t h e   c h o s e n   f o l d e r -  1 2 1 l   # 3���� 3 O    # 4 5 4 r    " 6 7 6 n      8 9 8 2     ��
�� 
file 9 4    �� :
�� 
cfol : o    ���� 0 
folderpath 
folderPath 7 o      ���� 0 filelist fileList 5 m     ; ;�                                                                                  MACS  alis    @  Macintosh HD               ���BD ����
Finder.app                                                     �������        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   2  < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @   Initialize counter    A � B B &   I n i t i a l i z e   c o u n t e r ?  C D C l  $ ' E���� E r   $ ' F G F m   $ %����  G o      ���� 0 counter  ��  ��   D  H I H l     ��������  ��  ��   I  J K J l     �� L M��   L   Loop through each file    M � N N .   L o o p   t h r o u g h   e a c h   f i l e K  O P O l  ( � Q���� Q X   ( � R�� S R k   : � T T  U V U l  : :�� W X��   W 1 + Get the creation date directly from Finder    X � Y Y V   G e t   t h e   c r e a t i o n   d a t e   d i r e c t l y   f r o m   F i n d e r V  Z [ Z O   : H \ ] \ r   > G ^ _ ^ n   > C ` a ` 1   ? C��
�� 
ascd a o   > ?���� 0 afile aFile _ o      ���� 0 creationdate creationDate ] m   : ; b b�                                                                                  MACS  alis    @  Macintosh HD               ���BD ����
Finder.app                                                     �������        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   [  c d c l  I I��������  ��  ��   d  e f e l  I I�� g h��   g ( " Convert date to YYYY-MM-DD format    h � i i D   C o n v e r t   d a t e   t o   Y Y Y Y - M M - D D   f o r m a t f  j k j r   I k l m l o   I L���� 0 creationdate creationDate m K       n n �� o p
�� 
year o o      ���� 0 y   p �� q r
�� 
mnth q o      ���� 0 m   r �� s��
�� 
day  s o      ���� 0 d  ��   k  t u t r   l � v w v b   l � x y x b   l � z { z b   l � | } | b   l w ~  ~ l  l s ����� � c   l s � � � o   l o���� 0 y   � m   o r��
�� 
TEXT��  ��    m   s v � � � � �  - } n  w � � � � I   x ��� ����� 0 formatnumber formatNumber �  ��� � c   x  � � � o   x {���� 0 m   � m   { ~��
�� 
long��  ��   �  f   w x { m   � � � � � � �  - y n  � � � � � I   � ��� ����� 0 formatnumber formatNumber �  ��� � c   � � � � � o   � ����� 0 d   � m   � ���
�� 
long��  ��   �  f   � � w o      ���� 0 formatteddate formattedDate u  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � &   Get the original file extension    � � � � @   G e t   t h e   o r i g i n a l   f i l e   e x t e n s i o n �  � � � O   � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
nmxt � o   � ����� 0 afile aFile � o      ���� 0 fileextension fileExtension � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD               ���BD ����
Finder.app                                                     �������        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � C = Format the counter as a four-digit string with leading zeros    � � � � z   F o r m a t   t h e   c o u n t e r   a s   a   f o u r - d i g i t   s t r i n g   w i t h   l e a d i n g   z e r o s �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � ������� � m   � ������� � l  � � ����� � b   � � � � � m   � � � � � � �  0 0 0 � o   � ����� 0 counter  ��  ��   � o      ���� $0 formattedcounter formattedCounter �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � P J Create the new file name in the format [YYYY-MM-DD] CustomName - 0001.ext    � � � � �   C r e a t e   t h e   n e w   f i l e   n a m e   i n   t h e   f o r m a t   [ Y Y Y Y - M M - D D ]   C u s t o m N a m e   -   0 0 0 1 . e x t �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  [ � o   � ����� 0 formatteddate formattedDate � m   � � � � � � �  ]   � o   � ����� 0 
customname 
customName � m   � � � � � � �    -   � o   � ����� $0 formattedcounter formattedCounter � m   � � � � � � �  . � o   � ����� 0 fileextension fileExtension � o      ���� 0 newname newName �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Rename the file    � � � �     R e n a m e   t h e   f i l e �  � � � O   � � � � � r   � � � � � o   � ����� 0 newname newName � n       � � � 1   � ���
�� 
pnam � o   � ����� 0 afile aFile � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD               ���BD ����
Finder.app                                                     �������        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Increment the counter    � � � � ,   I n c r e m e n t   t h e   c o u n t e r �  ��� � r   � � � � � [   � � � � � o   � ����� 0 counter   � m   � �����  � o      ���� 0 counter  ��  �� 0 afile aFile S o   + ,���� 0 filelist fileList��  ��   P  � � � l     ��������  ��  ��   �  � � � l  � ����� � I  �� ��~
� .sysodlogaskr        TEXT � m   �  � � � � � . F i l e   r e n a m i n g   c o m p l e t e !�~  ��  ��   �  � � � l     �}�|�{�}  �|  �{   �  � � � l     �z �z    < 6 Helper function to format month and day as two digits    � l   H e l p e r   f u n c t i o n   t o   f o r m a t   m o n t h   a n d   d a y   a s   t w o   d i g i t s � �y i      I      �x�w�x 0 formatnumber formatNumber �v o      �u�u 0 n  �v  �w   Z     	�t
 A      o     �s�s 0 n   m    �r�r 
	 L    
 b    	 m     �  0 o    �q�q 0 n  �t  
 L     c     o    �p�p 0 n   m    �o
�o 
TEXT�y       �n�n   �m�l�m 0 formatnumber formatNumber
�l .aevtoappnull  �   � **** �k�j�i�h�k 0 formatnumber formatNumber�j �g�g   �f�f 0 n  �i   �e�e 0 n   �d�c�d 

�c 
TEXT�h �� 	�%Y ��& �b�a�`�_
�b .aevtoappnull  �   � **** k      
      1!!  C""  O##  ��^�^  �a  �`   �]�] 0 afile aFile -�\ �[�Z %�Y (�X�W�V ;�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F ��E�D ��C�B�A ��@�?�> � � � ��=�< �
�\ 
prmp
�[ .sysostflalis    ��� null�Z 0 
folderpath 
folderPath
�Y 
dtxt
�X .sysodlogaskr        TEXT
�W 
ttxt�V 0 
customname 
customName
�U 
cfol
�T 
file�S 0 filelist fileList�R 0 counter  
�Q 
kocl
�P 
cobj
�O .corecnte****       ****
�N 
ascd�M 0 creationdate creationDate
�L 
year�K 0 y  
�J 
mnth�I 0 m  
�H 
day �G 0 d  
�F 
TEXT
�E 
long�D 0 formatnumber formatNumber�C 0 formatteddate formattedDate
�B 
nmxt�A 0 fileextension fileExtension
�@ 
ctxt�?���> $0 formattedcounter formattedCounter�= 0 newname newName
�< 
pnam�_*��l E�O���l �,E�O� 
*��/�-E�UOkE�O ��[�a l kh  � �a ,E` UO_ E[a ,E` Z[a ,E` Z[a ,E` ZO_ a &a %)_ a &k+ %a %)_ a &k+ %E` O� �a  ,E` !UOa "�%[a #\[Za $\Zi2E` %Oa &_ %a '%�%a (%_ %%a )%_ !%E` *O� _ *�a +,FUO�kE�[OY�=Oa ,j  ascr  ��ޭ