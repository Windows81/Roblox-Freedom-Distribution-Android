.class Lcom/roblox/client/ActivityNativeMain$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$5;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 828
    packed-switch p2, :pswitch_data_0

    .line 838
    :goto_0
    return-void

    .line 830
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$5;->a:Lcom/roblox/client/ActivityNativeMain;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/ActivityNativeMain;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$5;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Lcom/roblox/client/ActivityNativeMain;->m()V

    goto :goto_0

    .line 835
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
