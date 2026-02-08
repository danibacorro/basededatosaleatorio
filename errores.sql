CREATE OR REPLACE PROCEDURE errores_accesos
IS
CURSOR c_errores IS
    SELECT USERNAME, EXTENDED_TIMESTAMP, RETURNCODE
    FROM DBA_AUDIT_SESSION
    WHERE RETURNCODE <> 0;
BEGIN
FOR r IN c_errores LOOP
    DBMS_OUTPUT.PUT_LINE('HORA: ' || r.EXTENDED_TIMESTAMP);
    DBMS_OUTPUT.PUT_LINE(CHR(9) || '- USUARIO: ' || r.USERNAME);

    CASE r.RETURNCODE
        WHEN 00988 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'La contraseña no se ha introducido o es inválida');
        WHEN 01004 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Usuario no introducido/Inicio de sesión automático fallido');
        WHEN 01005 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Contraseña no introducida');
        WHEN 01017 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Usuario o contraseña inválidos');
        WHEN 01031 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Usuario sin privilegios');
        WHEN 01033 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Se ha intentado iniciar sesión mientras la base de datos se montaba o desmontaba');
        WHEN 01034 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Instancia de Oracle sin iniciar o sin conexión con el servidor');
        WHEN 01045 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Usuario sin privilegios para inciar sesión');
        WHEN 01090 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Apagado de la base de datos en proceso');
        WHEN 01917 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'El usuario o rol no existen');
        WHEN 01918 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'El usuario no existe');
        WHEN 09911 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Contraseña incorrecta');
        WHEN 28000 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Cuenta bloqueada');
        WHEN 28001 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Contraseña expirada');
        WHEN 28002 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Caducidad de la contraseña cercana');
        WHEN 28009 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'La conexión a SYS se debe realizar desde SYSDBA o SYSOPER');
        WHEN 28011 THEN DBMS_OUTPUT.PUT_LINE(CHR(9)||'Caducidad de la contraseña cercana');
        ELSE DBMS_OUTPUT.PUT_LINE(CHR(9)||'Ha ocurrido un error ni identificado en el inicio de sesión');
    END CASE;
END LOOP;
END;
/