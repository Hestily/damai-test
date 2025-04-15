.class public Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;
.super Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;
.source "ShellDexMode.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static volatile firstRelease:Z

.field private static final logger:Lcom/ali/mobisecenhance/ld/RecordLog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 24
    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;->logger:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;->firstRelease:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZJ)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseDir"    # Ljava/lang/String;
    .param p4, "dex2oatDir"    # Ljava/lang/String;
    .param p5, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .param p6, "isMainProcess"    # Z
    .param p7, "begin"    # J

    .line 32
    invoke-direct/range {p0 .. p8}, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;-><init>(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZJ)V

    .line 33
    return-void
.end method

.method private native deleteApk()V
.end method

.method private native extractRealFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native declared-synchronized isFirstRelease()Z
.end method

.method public static native declared-synchronized setFirstRelease(Z)V
.end method


# virtual methods
.method public native beginHardWork()V
.end method

.method public native cleanup()V
.end method

.method public decodeFile(Ljava/io/File;Ljava/io/File;)V
    .locals 23
    .param p1, "src"    # Ljava/io/File;
    .param p2, "out"    # Ljava/io/File;

    .line 106
    const-string v0, " length "

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 107
    .local v1, "size":J
    const-wide/16 v3, 0x0

    .line 108
    .local v3, "offset":J
    const-wide/16 v5, 0x400

    .line 113
    .local v5, "length":J
    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    .line 114
    sub-long v3, v1, v5

    goto :goto_0

    .line 116
    :cond_0
    move-wide v5, v1

    .line 119
    :goto_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .local v7, "fis":Ljava/io/FileInputStream;
    const/16 v9, 0x2000

    :try_start_2
    new-array v10, v9, [B

    .line 128
    .local v10, "originalBuffer":[B
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-nez v11, :cond_1

    .line 129
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 119
    .end local v10    # "originalBuffer":[B
    :catchall_0
    move-exception v0

    move-object/from16 v14, p2

    move-wide/from16 v19, v1

    move-wide/from16 v16, v3

    move-wide/from16 v21, v5

    move-object v1, v0

    goto/16 :goto_8

    .line 131
    .restart local v10    # "originalBuffer":[B
    :cond_1
    :goto_1
    move-wide v11, v3

    .line 133
    .local v11, "originalBytesRemain":J
    :try_start_4
    new-instance v13, Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move-object/from16 v14, p2

    :try_start_5
    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 134
    .local v13, "fos":Ljava/io/FileOutputStream;
    :goto_2
    const-wide/16 v15, 0x2000

    cmp-long v17, v11, v15

    if-gez v17, :cond_2

    long-to-int v15, v11

    goto :goto_3

    :cond_2
    const/16 v15, 0x2000

    :goto_3
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v7, v10, v9, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v17, v10

    .end local v10    # "originalBuffer":[B
    .local v17, "originalBuffer":[B
    int-to-long v9, v15

    move-wide/from16 v19, v9

    .local v19, "bytesRead":J
    const-wide/16 v21, 0x0

    cmp-long v15, v9, v21

    if-lez v15, :cond_3

    .line 137
    move-wide/from16 v9, v19

    .end local v19    # "bytesRead":J
    .local v9, "bytesRead":J
    long-to-int v15, v9

    move-wide/from16 v19, v1

    move-object/from16 v1, v17

    const/4 v2, 0x0

    .end local v17    # "originalBuffer":[B
    .local v1, "originalBuffer":[B
    .local v19, "size":J
    :try_start_7
    invoke-virtual {v13, v1, v2, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 138
    sub-long/2addr v11, v9

    move-object v10, v1

    move-wide/from16 v1, v19

    const/16 v9, 0x2000

    goto :goto_2

    .line 133
    .end local v9    # "bytesRead":J
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-wide/from16 v16, v3

    move-wide/from16 v21, v5

    goto/16 :goto_5

    .line 140
    .local v1, "size":J
    .restart local v17    # "originalBuffer":[B
    .local v19, "bytesRead":J
    :cond_3
    move-wide/from16 v9, v19

    move-wide/from16 v19, v1

    move-object/from16 v1, v17

    .end local v17    # "originalBuffer":[B
    .local v1, "originalBuffer":[B
    .restart local v9    # "bytesRead":J
    .local v19, "size":J
    long-to-int v2, v5

    :try_start_8
    new-array v2, v2, [B

    .line 141
    .local v2, "encodeBuffer":[B
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 142
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    move-wide/from16 v16, v3

    .end local v3    # "offset":J
    .local v16, "offset":J
    int-to-long v3, v15

    cmp-long v18, v3, v5

    if-gez v18, :cond_4

    .line 143
    :try_start_9
    aget-byte v3, v2, v15

    int-to-byte v4, v15

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 142
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v3, v16

    goto :goto_4

    .line 133
    .end local v2    # "encodeBuffer":[B
    .end local v9    # "bytesRead":J
    .end local v15    # "i":I
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-wide/from16 v21, v5

    goto :goto_5

    .line 145
    .restart local v2    # "encodeBuffer":[B
    .restart local v9    # "bytesRead":J
    :cond_4
    :try_start_a
    invoke-virtual {v13, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 146
    .end local v2    # "encodeBuffer":[B
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 147
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    sget-object v2, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;->logger:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "after release dex "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-wide/from16 v21, v5

    .end local v5    # "length":J
    .local v21, "length":J
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 148
    .end local v1    # "originalBuffer":[B
    .end local v9    # "bytesRead":J
    .end local v11    # "originalBytesRemain":J
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 150
    .end local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_c

    .line 119
    .end local v21    # "length":J
    .restart local v5    # "length":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v0

    move-wide/from16 v21, v5

    move-object v1, v0

    .end local v5    # "length":J
    .restart local v21    # "length":J
    goto :goto_8

    .line 133
    .end local v21    # "length":J
    .restart local v1    # "originalBuffer":[B
    .restart local v5    # "length":J
    .restart local v11    # "originalBytesRemain":J
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v0

    move-wide/from16 v21, v5

    move-object v2, v0

    .end local v5    # "length":J
    .restart local v21    # "length":J
    goto :goto_5

    .end local v16    # "offset":J
    .end local v21    # "length":J
    .restart local v3    # "offset":J
    .restart local v5    # "length":J
    :catchall_5
    move-exception v0

    move-wide/from16 v16, v3

    move-wide/from16 v21, v5

    move-object v2, v0

    .end local v3    # "offset":J
    .end local v5    # "length":J
    .restart local v16    # "offset":J
    .restart local v21    # "length":J
    goto :goto_5

    .end local v16    # "offset":J
    .end local v19    # "size":J
    .end local v21    # "length":J
    .local v1, "size":J
    .restart local v3    # "offset":J
    .restart local v5    # "length":J
    .restart local v10    # "originalBuffer":[B
    :catchall_6
    move-exception v0

    move-wide/from16 v19, v1

    move-wide/from16 v16, v3

    move-wide/from16 v21, v5

    move-object v1, v10

    move-object v2, v0

    .end local v1    # "size":J
    .end local v3    # "offset":J
    .end local v5    # "length":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "originalBuffer":[B
    .end local v11    # "originalBytesRemain":J
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local p1    # "src":Ljava/io/File;
    .end local p2    # "out":Ljava/io/File;
    :goto_5
    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 146
    .local v1, "originalBuffer":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "originalBytesRemain":J
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "offset":J
    .restart local v19    # "size":J
    .restart local v21    # "length":J
    .restart local p1    # "src":Ljava/io/File;
    .restart local p2    # "out":Ljava/io/File;
    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v4, v0

    :try_start_10
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "offset":J
    .end local v19    # "size":J
    .end local v21    # "length":J
    .end local p1    # "src":Ljava/io/File;
    .end local p2    # "out":Ljava/io/File;
    :goto_6
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 119
    .end local v1    # "originalBuffer":[B
    .end local v11    # "originalBytesRemain":J
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "offset":J
    .restart local v19    # "size":J
    .restart local v21    # "length":J
    .restart local p1    # "src":Ljava/io/File;
    .restart local p2    # "out":Ljava/io/File;
    :catchall_9
    move-exception v0

    move-object v1, v0

    goto :goto_8

    .end local v16    # "offset":J
    .end local v19    # "size":J
    .end local v21    # "length":J
    .local v1, "size":J
    .restart local v3    # "offset":J
    .restart local v5    # "length":J
    :catchall_a
    move-exception v0

    goto :goto_7

    :catchall_b
    move-exception v0

    move-object/from16 v14, p2

    :goto_7
    move-wide/from16 v19, v1

    move-wide/from16 v16, v3

    move-wide/from16 v21, v5

    move-object v1, v0

    .end local v1    # "size":J
    .end local v3    # "offset":J
    .end local v5    # "length":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "src":Ljava/io/File;
    .end local p2    # "out":Ljava/io/File;
    :goto_8
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 148
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "offset":J
    .restart local v19    # "size":J
    .restart local v21    # "length":J
    .restart local p1    # "src":Ljava/io/File;
    .restart local p2    # "out":Ljava/io/File;
    :catchall_c
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    goto :goto_9

    :catchall_d
    move-exception v0

    move-object v3, v0

    :try_start_13
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v16    # "offset":J
    .end local v19    # "size":J
    .end local v21    # "length":J
    .end local p1    # "src":Ljava/io/File;
    .end local p2    # "out":Ljava/io/File;
    :goto_9
    throw v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "offset":J
    .restart local v19    # "size":J
    .restart local v21    # "length":J
    .restart local p1    # "src":Ljava/io/File;
    .restart local p2    # "out":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_b

    .end local v16    # "offset":J
    .end local v19    # "size":J
    .end local v21    # "length":J
    .restart local v1    # "size":J
    .restart local v3    # "offset":J
    .restart local v5    # "length":J
    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v8, p1

    :goto_a
    move-object/from16 v14, p2

    move-wide/from16 v19, v1

    move-wide/from16 v16, v3

    move-wide/from16 v21, v5

    .line 149
    .end local v1    # "size":J
    .end local v3    # "offset":J
    .end local v5    # "length":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "offset":J
    .restart local v19    # "size":J
    .restart local v21    # "length":J
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method protected native extractApk()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
