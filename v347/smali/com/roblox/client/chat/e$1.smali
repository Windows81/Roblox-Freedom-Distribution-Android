.class Lcom/roblox/client/chat/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/chat/e;
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
    .line 91
    iput-object p1, p0, Lcom/roblox/client/chat/e$1;->a:Lcom/roblox/client/chat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/roblox/client/e/l;)V
    .locals 3

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/roblox/client/e/l;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/roblox/client/chat/e$1;->a:Lcom/roblox/client/chat/e;

    invoke-static {v0}, Lcom/roblox/client/chat/e;->a(Lcom/roblox/client/chat/e;)Lcom/roblox/client/chat/a/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/roblox/client/e/l;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/roblox/client/e/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/chat/a/b;->a(Ljava/util/List;I)V

    .line 99
    iget-object v0, p0, Lcom/roblox/client/chat/e$1;->a:Lcom/roblox/client/chat/e;

    invoke-static {v0}, Lcom/roblox/client/chat/e;->b(Lcom/roblox/client/chat/e;)Lcom/roblox/client/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/c;->notifyDataSetChanged()V

    .line 101
    :cond_0
    return-void
.end method
