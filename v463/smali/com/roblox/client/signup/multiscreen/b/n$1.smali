.class Lcom/roblox/client/signup/multiscreen/b/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/n;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/n;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/d$a;->a:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 65
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "Empty"

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/d$a;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 71
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "IsUsername"

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 76
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/d$a;->c:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 77
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "TooShort"

    goto :goto_0

    :cond_2
    const-string v0, "PasswordValidator"

    const-string v2, "Start validation task."

    .line 82
    invoke-static {v0, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/b/n;)Lcom/roblox/client/signup/multiscreen/b/k;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/b/n;)Lcom/roblox/client/signup/multiscreen/b/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/k;->cancel(Z)Z

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/b/n;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/b/k;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/b/n;Lcom/roblox/client/signup/multiscreen/b/k;)Lcom/roblox/client/signup/multiscreen/b/k;

    .line 87
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/b/n;)Lcom/roblox/client/signup/multiscreen/b/k;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, ""

    .line 90
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 91
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/n$1;->c:Lcom/roblox/client/signup/multiscreen/b/n;

    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/b/n;->b(Lcom/roblox/client/signup/multiscreen/b/n;)Lcom/roblox/client/signup/multiscreen/b/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/signup/multiscreen/b/h;->a(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method
