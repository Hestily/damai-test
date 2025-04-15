.class public Landroid/taobao/windvane/packageapp/zipapp/utils/ZipAppSecurityUtils;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageApp-ZipAppSecurityUtils"

.field private static final key:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr4QTVnTHJ/W1hfBkEfTdWMMAxsQHW22gK0JProk3hmdwwal+Up7Ty/8NUXs+8SKufik2ASXQLFkqeoZu60sXmtlQGZJ+kAezC8pS9MboHZWywO9VJwxRUQuXI/Hn0jjZsA8tZPpN6Ty9wkz80GrQJrRuhjEjT0JAjElhpZUxTXMKIIPqM+ndgcfF55f9wWYFKW+o/Z0Nil0yP1crvLryq3sbSbDTnz7+j4zUE7aCGb0ECyS/ii1o53C08YKyhzpSTICSzILvHMdHFHGeuH1LfrinuLYdyORlC0f6qoSODBSaXO7UI+uHxhb6K3e1YzUYsMRuEjyDUTETeT/b07LIgwIDAQAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validConfigFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr4QTVnTHJ/W1hfBkEfTdWMMAxsQHW22gK0JProk3hmdwwal+Up7Ty/8NUXs+8SKufik2ASXQLFkqeoZu60sXmtlQGZJ+kAezC8pS9MboHZWywO9VJwxRUQuXI/Hn0jjZsA8tZPpN6Ty9wkz80GrQJrRuhjEjT0JAjElhpZUxTXMKIIPqM+ndgcfF55f9wWYFKW+o/Z0Nil0yP1crvLryq3sbSbDTnz7+j4zUE7aCGb0ECyS/ii1o53C08YKyhzpSTICSzILvHMdHFHGeuH1LfrinuLYdyORlC0f6qoSODBSaXO7UI+uHxhb6K3e1YzUYsMRuEjyDUTETeT/b07LIgwIDAQAB"

    .line 1
    invoke-static {v0}, Landroid/taobao/windvane/util/RsaUtil;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/util/RsaUtil;->decryptData(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p0}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decrypt fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageApp-ZipAppSecurityUtils"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
