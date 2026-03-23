.class public Lcom/roblox/client/game/b$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/game/b$g;


# direct methods
.method public constructor <init>(Lcom/roblox/client/game/b$g;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/roblox/client/game/b$c;->a:Lcom/roblox/client/game/b$g;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 378
    invoke-static {}, Lcom/roblox/client/b;->c()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {}, Lcom/roblox/client/u;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeInitClientSettings(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/roblox/client/game/b$c;->a:Lcom/roblox/client/game/b$g;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/roblox/client/game/b$g;->a(I)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 368
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/game/b$c;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 368
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/roblox/client/game/b$c;->a(Ljava/lang/Integer;)V

    return-void
.end method
