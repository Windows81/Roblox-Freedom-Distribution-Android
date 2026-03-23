.class Lcom/roblox/client/hybrid/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/jni/memstorage/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/hybrid/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/hybrid/a;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/roblox/client/hybrid/a$1;->a:Lcom/roblox/client/hybrid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSet(Ljava/lang/String;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserService.ExecuteJavaScript : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.browserservice"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/roblox/client/hybrid/a$1;->a:Lcom/roblox/client/hybrid/a;

    new-instance v1, Lcom/roblox/client/hybrid/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/hybrid/a$1$1;-><init>(Lcom/roblox/client/hybrid/a$1;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/roblox/client/hybrid/a;->a(Lcom/roblox/client/hybrid/a;Ljava/lang/Runnable;)V

    return-void
.end method
