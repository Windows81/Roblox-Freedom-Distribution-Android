.class public Lcom/roblox/client/hybrid/a/b;
.super Lcom/roblox/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a/b$d;,
        Lcom/roblox/client/hybrid/a/b$e;,
        Lcom/roblox/client/hybrid/a/b$a;,
        Lcom/roblox/client/hybrid/a/b$b;,
        Lcom/roblox/client/hybrid/a/b$c;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/a/f;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/f;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    const-string v0, "Chat"

    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/b;->a:Landroid/support/v4/a/f;

    .line 39
    const-string v0, "newMessageNotification"

    new-instance v1, Lcom/roblox/client/hybrid/a/b$c;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/b$c;-><init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/b;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 40
    const-string v0, "getTopBarHeight"

    new-instance v1, Lcom/roblox/client/hybrid/a/b$b;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/b$b;-><init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/b;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 41
    const-string v0, "getKeyboardHeight"

    new-instance v1, Lcom/roblox/client/hybrid/a/b$a;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/b$a;-><init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/b;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 42
    const-string v0, "startChatConversation"

    new-instance v1, Lcom/roblox/client/hybrid/a/b$e;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/b$e;-><init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/b;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 43
    const-string v0, "shareGameToChat"

    new-instance v1, Lcom/roblox/client/hybrid/a/b$d;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/b$d;-><init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/b;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/hybrid/a/b;)Landroid/support/v4/a/f;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/roblox/client/hybrid/a/b;->a:Landroid/support/v4/a/f;

    return-object v0
.end method
