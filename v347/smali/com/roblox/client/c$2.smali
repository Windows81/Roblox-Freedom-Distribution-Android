.class Lcom/roblox/client/c$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/c;->a(Lcom/roblox/client/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/c$a;

.field final synthetic b:Lcom/roblox/client/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/c;Lcom/roblox/client/c$a;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/roblox/client/c$2;->b:Lcom/roblox/client/c;

    iput-object p2, p0, Lcom/roblox/client/c$2;->a:Lcom/roblox/client/c$a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/roblox/client/c$2;->b:Lcom/roblox/client/c;

    invoke-static {v0}, Lcom/roblox/client/c;->a(Lcom/roblox/client/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/c$2;->b:Lcom/roblox/client/c;

    invoke-static {v0}, Lcom/roblox/client/c;->b(Lcom/roblox/client/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/roblox/client/c$2;->b:Lcom/roblox/client/c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/roblox/client/c;->a(Lcom/roblox/client/c;Z)Z

    .line 189
    iget-object v0, p0, Lcom/roblox/client/c$2;->a:Lcom/roblox/client/c$a;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/roblox/client/c$2;->a:Lcom/roblox/client/c$a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/roblox/client/c$a;->a(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/c$2;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/roblox/client/c$2;->a(Ljava/lang/Boolean;)V

    return-void
.end method
