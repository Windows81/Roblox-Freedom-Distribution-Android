.class Lcom/roblox/client/login/ActivityLogin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/ActivityLogin;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/ActivityLogin;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/roblox/client/login/ActivityLogin$2;->a:Lcom/roblox/client/login/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/roblox/client/login/ActivityLogin$2;->a:Lcom/roblox/client/login/ActivityLogin;

    invoke-static {v0}, Lcom/roblox/client/login/ActivityLogin;->a(Lcom/roblox/client/login/ActivityLogin;)Lcom/roblox/client/login/a;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/roblox/client/login/a;->c()V

    .line 228
    :cond_0
    return-void
.end method
