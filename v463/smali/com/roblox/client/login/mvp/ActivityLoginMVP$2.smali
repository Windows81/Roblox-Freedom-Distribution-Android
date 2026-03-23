.class Lcom/roblox/client/login/mvp/ActivityLoginMVP$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/mvp/ActivityLoginMVP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$2;->a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 308
    iget-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$2;->a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-static {p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)Lcom/roblox/client/login/mvp/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/a;->as()V

    :cond_0
    return-void
.end method
