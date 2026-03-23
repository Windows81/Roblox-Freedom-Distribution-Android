.class public abstract Lcom/roblox/client/signup/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/signup/f;",
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

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Lcom/roblox/client/signup/d$a;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private final u:Z


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/d$a;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "Z^#q"

    .line 25
    iput-object v0, p0, Lcom/roblox/client/signup/d;->k:Ljava/lang/String;

    const-string v0, "Fu.*mJ"

    .line 26
    iput-object v0, p0, Lcom/roblox/client/signup/d;->l:Ljava/lang/String;

    const-string v0, "l%=f~RIW"

    .line 27
    iput-object v0, p0, Lcom/roblox/client/signup/d;->m:Ljava/lang/String;

    const-string v0, "L65HQ,v?K"

    .line 28
    iput-object v0, p0, Lcom/roblox/client/signup/d;->n:Ljava/lang/String;

    const-string v0, "hC39$"

    .line 29
    iput-object v0, p0, Lcom/roblox/client/signup/d;->o:Ljava/lang/String;

    const-string v0, "qb@Wl"

    .line 30
    iput-object v0, p0, Lcom/roblox/client/signup/d;->p:Ljava/lang/String;

    const-string v0, "Av=M"

    .line 31
    iput-object v0, p0, Lcom/roblox/client/signup/d;->q:Ljava/lang/String;

    const-string v0, "B7YpO"

    .line 32
    iput-object v0, p0, Lcom/roblox/client/signup/d;->r:Ljava/lang/String;

    const-string v0, "jEda0J~i"

    .line 33
    iput-object v0, p0, Lcom/roblox/client/signup/d;->s:Ljava/lang/String;

    const-string v0, "HZmfcyG9,F"

    .line 34
    iput-object v0, p0, Lcom/roblox/client/signup/d;->t:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/roblox/client/signup/d;->u:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/roblox/client/signup/d;->a:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/roblox/client/signup/d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/roblox/client/signup/d;->c:I

    .line 44
    iput-object v0, p0, Lcom/roblox/client/signup/d;->g:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/roblox/client/signup/d;->h:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/roblox/client/signup/d;->i:Ljava/lang/String;

    .line 52
    iput-object p10, p0, Lcom/roblox/client/signup/d;->j:Lcom/roblox/client/signup/d$a;

    .line 54
    iput-object p6, p0, Lcom/roblox/client/signup/d;->a:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/roblox/client/signup/d;->b:Ljava/lang/String;

    .line 56
    iput p1, p0, Lcom/roblox/client/signup/d;->c:I

    .line 57
    iput p2, p0, Lcom/roblox/client/signup/d;->d:I

    .line 58
    iput p3, p0, Lcom/roblox/client/signup/d;->e:I

    .line 59
    iput p4, p0, Lcom/roblox/client/signup/d;->f:I

    .line 60
    iput-object p5, p0, Lcom/roblox/client/signup/d;->g:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/roblox/client/signup/d;->h:Ljava/lang/String;

    .line 62
    iput-object p9, p0, Lcom/roblox/client/signup/d;->i:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/roblox/client/signup/f;
    .locals 3

    .line 80
    new-instance v0, Lcom/roblox/client/signup/f;

    invoke-direct {v0}, Lcom/roblox/client/signup/f;-><init>()V

    .line 81
    iget-object v1, v0, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    const-string v2, "PasswordInvalid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(III)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p0, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "%d/%d/%d"

    invoke-static {p0, v1}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 154
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const-string v1, "UTF-8"

    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 160
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 161
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/signup/f;
.end method

.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/signup/f;
    .locals 7

    .line 69
    iget-object p1, p0, Lcom/roblox/client/signup/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/roblox/client/signup/d;->a()Lcom/roblox/client/signup/f;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/d;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/d;->a(Ljava/lang/String;)[Lcom/roblox/client/http/b$a;

    move-result-object v6

    .line 74
    iget-object v1, p0, Lcom/roblox/client/signup/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/signup/d;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/signup/d;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/roblox/client/signup/d;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/signup/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/signup/f;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/roblox/client/signup/f;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/roblox/client/signup/d;->j:Lcom/roblox/client/signup/d$a;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/roblox/client/signup/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/roblox/client/signup/d;->j:Lcom/roblox/client/signup/d$a;

    invoke-interface {v0, p1}, Lcom/roblox/client/signup/d$a;->a(Lcom/roblox/client/signup/f;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/d;->j:Lcom/roblox/client/signup/d$a;

    invoke-interface {v0, p1}, Lcom/roblox/client/signup/d$a;->b(Lcom/roblox/client/signup/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/String;)[Lcom/roblox/client/http/b$a;
    .locals 3

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/roblox/client/u;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/signup/d;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/signup/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/d;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_1

    .line 141
    new-instance v0, Lcom/roblox/client/http/b$a;

    invoke-direct {v0}, Lcom/roblox/client/http/b$a;-><init>()V

    const-string v1, "X-RBXUSER-TOKEN"

    .line 142
    iput-object v1, v0, Lcom/roblox/client/http/b$a;->a:Ljava/lang/String;

    .line 143
    iput-object p1, v0, Lcom/roblox/client/http/b$a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/roblox/client/http/b$a;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .line 111
    iget v0, p0, Lcom/roblox/client/signup/d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Male"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Female"

    goto :goto_0

    :cond_1
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/d;->a([Ljava/lang/Void;)Lcom/roblox/client/signup/f;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/roblox/client/signup/f;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/d;->a(Lcom/roblox/client/signup/f;)V

    return-void
.end method
