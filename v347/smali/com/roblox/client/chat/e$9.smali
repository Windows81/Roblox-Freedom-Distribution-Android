.class Lcom/roblox/client/chat/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/e;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/e;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/roblox/client/chat/e$9;->a:Lcom/roblox/client/chat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJLjava/lang/String;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/roblox/client/chat/e$9;->a:Lcom/roblox/client/chat/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/chat/e;->a(Lcom/roblox/client/chat/e;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    if-eqz p1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/roblox/client/chat/e$9;->a:Lcom/roblox/client/chat/e;

    invoke-static {v0, p2, p3}, Lcom/roblox/client/chat/e;->c(Lcom/roblox/client/chat/e;J)V

    .line 438
    :cond_0
    return-void
.end method
