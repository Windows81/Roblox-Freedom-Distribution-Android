.class Lcom/roblox/client/login/ActivityLogin$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/ActivityLogin$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/ActivityLogin$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/ActivityLogin$1;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/roblox/client/login/ActivityLogin$1$1;->a:Lcom/roblox/client/login/ActivityLogin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/roblox/client/login/ActivityLogin$1$1;->a:Lcom/roblox/client/login/ActivityLogin$1;

    iget-object v0, v0, Lcom/roblox/client/login/ActivityLogin$1;->a:Lcom/roblox/client/login/ActivityLogin;

    const-string v1, "password_reset_requested"

    invoke-static {v0, v1}, Lcom/roblox/client/login/ActivityLogin;->a(Lcom/roblox/client/login/ActivityLogin;Ljava/lang/String;)V

    .line 194
    return-void
.end method
