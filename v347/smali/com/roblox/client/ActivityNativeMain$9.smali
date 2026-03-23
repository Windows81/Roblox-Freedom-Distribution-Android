.class Lcom/roblox/client/ActivityNativeMain$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->S()V
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
    .line 1301
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$9;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1305
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1306
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$9;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 1307
    return-void
.end method
