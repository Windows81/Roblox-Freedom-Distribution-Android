.class Lcom/roblox/client/login/d$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/d$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/d$e;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/d$e;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/roblox/client/login/d$e$1;->a:Lcom/roblox/client/login/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/roblox/client/login/d$e$1;->a:Lcom/roblox/client/login/d$e;

    iget-object v0, v0, Lcom/roblox/client/login/d$e;->a:Lcom/roblox/client/login/d;

    const-string v1, "ChatSettings"

    invoke-virtual {v0, v1}, Lcom/roblox/client/login/d;->a(Ljava/lang/String;)V

    .line 116
    return-void
.end method
