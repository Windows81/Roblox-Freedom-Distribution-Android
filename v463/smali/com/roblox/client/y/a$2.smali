.class Lcom/roblox/client/y/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/y/a;->a(Landroid/app/Activity;ILcom/roblox/client/g/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/f/c<",
        "Lcom/google/android/gms/auth/api/credentials/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/g/a$b;

.field final synthetic b:I

.field final synthetic c:Lcom/roblox/client/y/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/y/a;Lcom/roblox/client/g/a$b;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    iput-object p2, p0, Lcom/roblox/client/y/a$2;->a:Lcom/roblox/client/g/a$b;

    iput p3, p0, Lcom/roblox/client/y/a$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/f/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/f/g<",
            "Lcom/google/android/gms/auth/api/credentials/a;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/f/g;->b()Z

    move-result v0

    const-string v1, "SmartLockManager"

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/f/g;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/credentials/a;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/a;->a()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    invoke-static {v0}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object v0

    const-string v1, "credentialSelectedNoDialog"

    invoke-virtual {v0, v1}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/roblox/client/y/a$2;->a:Lcom/roblox/client/g/a$b;

    iget-object v1, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    invoke-virtual {p1}, Lcom/google/android/gms/f/g;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/a;->a()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/roblox/client/g/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/roblox/client/g/a$b;->a(Lcom/roblox/client/g/c;)V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/f/g;->e()Ljava/lang/Exception;

    move-result-object p1

    .line 122
    instance-of v0, p1, Lcom/google/android/gms/common/api/j;

    const-string v2, "dialogNotShown"

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    iget-object v0, v0, Lcom/roblox/client/y/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/j;

    .line 129
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/api/j;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/j;->a()I

    move-result p1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_4

    .line 130
    iget-object p1, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    iget-object p1, p1, Lcom/roblox/client/y/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget v3, p0, Lcom/roblox/client/y/a$2;->b:I

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/common/api/j;->a(Landroid/app/Activity;I)V

    .line 131
    iget-object p1, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    invoke-static {p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object p1

    const-string v0, "dialogShown"

    invoke-virtual {p1, v0}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send resolution."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    invoke-static {v0}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    invoke-static {p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object p1

    const-string v0, "nullActivity"

    invoke-virtual {p1, v2, v0}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/common/api/b;

    if-eqz v0, :cond_3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsuccessful credential request."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    check-cast p1, Lcom/google/android/gms/common/api/b;

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/b;->a()I

    move-result p1

    .line 148
    iget-object v0, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    invoke-static {v0}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/roblox/client/y/a$2;->c:Lcom/roblox/client/y/a;

    invoke-static {p1}, Lcom/roblox/client/y/a;->a(Lcom/roblox/client/y/a;)Lcom/roblox/client/g/b;

    move-result-object p1

    const-string v0, "unknown"

    invoke-virtual {p1, v2, v0}, Lcom/roblox/client/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
