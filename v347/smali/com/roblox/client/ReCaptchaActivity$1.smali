.class Lcom/roblox/client/ReCaptchaActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ReCaptchaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ReCaptchaActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/ReCaptchaActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/roblox/client/ReCaptchaActivity$1;->a:Lcom/roblox/client/ReCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity$1;->a:Lcom/roblox/client/ReCaptchaActivity;

    invoke-static {v0}, Lcom/roblox/client/ReCaptchaActivity;->a(Lcom/roblox/client/ReCaptchaActivity;)V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
