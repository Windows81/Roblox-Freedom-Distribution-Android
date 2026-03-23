.class Lcom/roblox/client/login/d$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/d$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/d$c;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/d$c;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/roblox/client/login/d$c$1;->a:Lcom/roblox/client/login/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/roblox/client/login/d$c$1;->a:Lcom/roblox/client/login/d$c;

    iget-object v0, v0, Lcom/roblox/client/login/d$c;->a:Lcom/roblox/client/login/d;

    const-string v1, "AppLocaleSetting"

    invoke-virtual {v0, v1}, Lcom/roblox/client/login/d;->a(Ljava/lang/String;)V

    .line 181
    return-void
.end method
