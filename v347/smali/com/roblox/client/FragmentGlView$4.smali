.class Lcom/roblox/client/FragmentGlView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/FragmentGlView;->showGameErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/roblox/client/FragmentGlView;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentGlView;I)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/roblox/client/FragmentGlView$4;->b:Lcom/roblox/client/FragmentGlView;

    iput p2, p0, Lcom/roblox/client/FragmentGlView$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$4;->b:Lcom/roblox/client/FragmentGlView;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 1181
    if-nez v0, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1186
    :cond_0
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/locale/a;->b(Landroid/content/Context;)V

    .line 1188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/roblox/client/FragmentGlView$4;->a:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e011d

    .line 1189
    invoke-virtual {v0, v2}, Landroid/support/v4/app/h;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/FragmentGlView$4$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/FragmentGlView$4$2;-><init>(Lcom/roblox/client/FragmentGlView$4;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/FragmentGlView$4$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/FragmentGlView$4$1;-><init>(Lcom/roblox/client/FragmentGlView$4;)V

    .line 1197
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1205
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
