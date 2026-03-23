.class public abstract Lcom/roblox/client/signup/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/signup/j;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Lcom/roblox/client/signup/e$a;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private final s:Z


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/e$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    const-string v0, "Z^#q"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->i:Ljava/lang/String;

    .line 26
    const-string v0, "Fu.*mJ"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->j:Ljava/lang/String;

    .line 27
    const-string v0, "l%=f~RIW"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->k:Ljava/lang/String;

    .line 28
    const-string v0, "L65HQ,v?K"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->l:Ljava/lang/String;

    .line 29
    const-string v0, "hC39$"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->m:Ljava/lang/String;

    .line 30
    const-string v0, "qb@Wl"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->n:Ljava/lang/String;

    .line 31
    const-string v0, "Av=M"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->o:Ljava/lang/String;

    .line 32
    const-string v0, "B7YpO"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->p:Ljava/lang/String;

    .line 33
    const-string v0, "jEda0J~i"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->q:Ljava/lang/String;

    .line 34
    const-string v0, "HZmfcyG9,F"

    iput-object v0, p0, Lcom/roblox/client/signup/e;->r:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/signup/e;->s:Z

    .line 38
    iput-object v1, p0, Lcom/roblox/client/signup/e;->a:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/roblox/client/signup/e;->b:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/signup/e;->c:I

    .line 44
    iput-object v1, p0, Lcom/roblox/client/signup/e;->g:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/roblox/client/signup/e;->h:Lcom/roblox/client/signup/e$a;

    .line 52
    iput-object p6, p0, Lcom/roblox/client/signup/e;->a:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/roblox/client/signup/e;->b:Ljava/lang/String;

    .line 54
    iput p1, p0, Lcom/roblox/client/signup/e;->c:I

    .line 55
    iput p2, p0, Lcom/roblox/client/signup/e;->d:I

    .line 56
    iput p3, p0, Lcom/roblox/client/signup/e;->e:I

    .line 57
    iput p4, p0, Lcom/roblox/client/signup/e;->f:I

    .line 58
    iput-object p5, p0, Lcom/roblox/client/signup/e;->g:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private a()Lcom/roblox/client/signup/j;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/roblox/client/signup/j;

    invoke-direct {v0}, Lcom/roblox/client/signup/j;-><init>()V

    .line 77
    iget-object v1, v0, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    const-string v2, "PasswordInvalid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method public static a(III)Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    add-int/lit8 v0, p0, 0x1

    .line 101
    const-string v1, "%d/%d/%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/roblox/client/util/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 152
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 156
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/signup/j;
.end method

.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/signup/j;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/roblox/client/signup/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/roblox/client/signup/e;->a()Lcom/roblox/client/signup/j;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/e;->a(Ljava/lang/String;)[Lcom/roblox/client/http/b$a;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/roblox/client/signup/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/signup/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/signup/e;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/roblox/client/signup/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/signup/j;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/roblox/client/signup/j;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/roblox/client/signup/e;->h:Lcom/roblox/client/signup/e$a;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/roblox/client/signup/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/roblox/client/signup/e;->h:Lcom/roblox/client/signup/e$a;

    invoke-interface {v0, p1}, Lcom/roblox/client/signup/e$a;->a(Lcom/roblox/client/signup/j;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/e;->h:Lcom/roblox/client/signup/e$a;

    invoke-interface {v0, p1}, Lcom/roblox/client/signup/e$a;->b(Lcom/roblox/client/signup/j;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)[Lcom/roblox/client/http/b$a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    .line 125
    :try_start_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTestSite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/signup/e;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    :goto_0
    invoke-direct {p0, v1}, Lcom/roblox/client/signup/e;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_1
    if-eqz v1, :cond_0

    .line 136
    new-instance v2, Lcom/roblox/client/http/b$a;

    invoke-direct {v2}, Lcom/roblox/client/http/b$a;-><init>()V

    .line 137
    const-string v0, "X-RBXUSER-TOKEN"

    iput-object v0, v2, Lcom/roblox/client/http/b$a;->a:Ljava/lang/String;

    .line 138
    iput-object v1, v2, Lcom/roblox/client/http/b$a;->b:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/roblox/client/http/b$a;

    .line 141
    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 145
    :cond_0
    return-object v0

    .line 128
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/signup/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/e;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method protected b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    const-string v0, "Unknown"

    .line 106
    iget v1, p0, Lcom/roblox/client/signup/e;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    const-string v0, "Male"

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    iget v1, p0, Lcom/roblox/client/signup/e;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 110
    const-string v0, "Female"

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/e;->a([Ljava/lang/Void;)Lcom/roblox/client/signup/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/roblox/client/signup/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/e;->a(Lcom/roblox/client/signup/j;)V

    return-void
.end method
