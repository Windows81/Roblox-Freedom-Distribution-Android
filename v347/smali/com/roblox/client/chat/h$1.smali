.class Lcom/roblox/client/chat/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/chat/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/h;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/roblox/client/chat/h$1;->a:Lcom/roblox/client/chat/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/e/l;)V
    .locals 1

    .prologue
    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/roblox/client/e/l;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/roblox/client/chat/h$1;->a:Lcom/roblox/client/chat/h;

    invoke-static {v0}, Lcom/roblox/client/chat/h;->a(Lcom/roblox/client/chat/h;)V

    .line 117
    :cond_0
    return-void
.end method
