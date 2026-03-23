.class public Lcom/roblox/client/y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/g/a;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/auth/api/credentials/e;

.field private c:Lcom/roblox/client/g/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/roblox/client/g/b;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/f$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/f$a;-><init>()V

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/f$a;->b()Lcom/google/android/gms/auth/api/credentials/f$a;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/f$a;->c()Lcom/google/android/gms/auth/api/credentials/f;

    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/credentials/c;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/credentials/f;)Lcom/google/android/gms/auth/api/credentials/e;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/y/a;->b:Lcom/google/android/gms/auth/api/credentials/e;

    .line 42
    iput-object p2, p0, Lcom/roblox/client/y/a;->c:Lcom/roblox/client/g/b;

    .line 44
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/roblox/client/y/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/roblox/client/y/a;->c:Lcom/roblox/client/g/b;

    return-object p0
.end method

.method private a(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/roblox/client/g/c;
    .locals 3

    .line 205
    new-instance v0, Lcom/roblox/client/g/c;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/roblox/client/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/y/a;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/roblox/client/g/c;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/roblox/client/y/a;->a(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/roblox/client/g/c;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/roblox/client/g/c;)Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 2

    .line 198
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/Credential$a;

    iget-object v1, p1, Lcom/roblox/client/g/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$a;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/roblox/client/g/c;->c:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/Credential$a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$a;

    move-result-object v0

    iget-object p1, p1, Lcom/roblox/client/g/c;->b:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/credentials/Credential$a;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$a;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential$a;->a()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/roblox/client/g/c;
    .locals 1

    const-string v0, "com.google.android.gms.credentials.Credential"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 50
    invoke-direct {p0, p1}, Lcom/roblox/client/y/a;->a(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/roblox/client/g/c;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/roblox/client/y/a;->c:Lcom/roblox/client/g/b;

    const-string v1, "credentialSaved"

    invoke-virtual {v0, v1}, Lcom/roblox/client/g/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;ILcom/roblox/client/g/a$b;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/roblox/client/b;->bY()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;-><init>()V

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->a(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$a;->a()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/roblox/client/y/a;->a:Ljava/lang/ref/WeakReference;

    .line 109
    iget-object p1, p0, Lcom/roblox/client/y/a;->b:Lcom/google/android/gms/auth/api/credentials/e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/credentials/e;->a(Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/f/g;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/y/a$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/roblox/client/y/a$2;-><init>(Lcom/roblox/client/y/a;Lcom/roblox/client/g/a$b;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/f/g;->a(Lcom/google/android/gms/f/c;)Lcom/google/android/gms/f/g;

    return-void
.end method

.method public a(Landroid/app/Activity;ILcom/roblox/client/g/c;Lcom/roblox/client/g/a$a;)V
    .locals 2

    const-string v0, "SmartLockManager"

    const-string v1, "saveCredential."

    .line 55
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/y/a;->a:Ljava/lang/ref/WeakReference;

    .line 57
    iget-object p1, p0, Lcom/roblox/client/y/a;->b:Lcom/google/android/gms/auth/api/credentials/e;

    invoke-direct {p0, p3}, Lcom/roblox/client/y/a;->b(Lcom/roblox/client/g/c;)Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/auth/api/credentials/e;->a(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/f/g;

    move-result-object p1

    new-instance p3, Lcom/roblox/client/y/a$1;

    invoke-direct {p3, p0, p4, p2}, Lcom/roblox/client/y/a$1;-><init>(Lcom/roblox/client/y/a;Lcom/roblox/client/g/a$a;I)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/f/g;->a(Lcom/google/android/gms/f/c;)Lcom/google/android/gms/f/g;

    return-void
.end method

.method public a(Lcom/roblox/client/g/c;)V
    .locals 1

    .line 158
    invoke-direct {p0, p1}, Lcom/roblox/client/y/a;->b(Lcom/roblox/client/g/c;)Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/roblox/client/y/a;->b:Lcom/google/android/gms/auth/api/credentials/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/credentials/e;->b(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/f/g;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/y/a$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/y/a$3;-><init>(Lcom/roblox/client/y/a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/f/g;->a(Lcom/google/android/gms/f/c;)Lcom/google/android/gms/f/g;

    return-void
.end method

.method public b()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/roblox/client/y/a;->c:Lcom/roblox/client/g/b;

    const-string v1, "credentialNotSaved"

    const-string v2, "neverClickedOrDialogDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/roblox/client/y/a;->c:Lcom/roblox/client/g/b;

    const-string v1, "credentialSelected"

    invoke-virtual {v0, v1}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/roblox/client/y/a;->c:Lcom/roblox/client/g/b;

    const-string v1, "dialogDismissed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;)V

    return-void
.end method
