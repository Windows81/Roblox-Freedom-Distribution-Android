.class public Lcom/roblox/client/game/b$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/game/b$g;


# direct methods
.method public constructor <init>(Lcom/roblox/client/game/b$g;)V
    .locals 0

    .line 394
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/roblox/client/game/b$e;->a:Lcom/roblox/client/game/b$g;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 401
    invoke-static {}, Lcom/roblox/engine/f;->a()Lcom/roblox/engine/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/engine/f;->b()Z

    const-string p1, "rbx.xapkmanager"

    const-string v0, "Unpacking complete"

    .line 402
    invoke-static {p1, v0}, Lcom/roblox/platform/e;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/roblox/client/game/b$e;->a:Lcom/roblox/client/game/b$g;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 409
    invoke-interface {p1, v0}, Lcom/roblox/client/game/b$g;->a(I)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/game/b$e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 390
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/game/b$e;->a(Ljava/lang/Void;)V

    return-void
.end method
