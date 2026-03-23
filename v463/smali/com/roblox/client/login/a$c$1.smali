.class Lcom/roblox/client/login/a$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/a$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/a$c;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/a$c;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/roblox/client/login/a$c$1;->a:Lcom/roblox/client/login/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/roblox/client/login/a$c$1;->a:Lcom/roblox/client/login/a$c;

    iget-object p1, p1, Lcom/roblox/client/login/a$c;->a:Lcom/roblox/client/login/a;

    const-string v0, "AppLocaleSetting"

    invoke-virtual {p1, v0}, Lcom/roblox/client/login/a;->a(Ljava/lang/String;)V

    return-void
.end method
