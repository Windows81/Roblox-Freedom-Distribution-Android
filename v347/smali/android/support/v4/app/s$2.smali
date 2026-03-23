.class Landroid/support/v4/app/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/s;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/support/v4/app/s;


# direct methods
.method constructor <init>(Landroid/support/v4/app/s;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/v4/app/s$2;->c:Landroid/support/v4/app/s;

    iput-object p2, p0, Landroid/support/v4/app/s$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/support/v4/app/s$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v4/app/s$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 236
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 237
    iget-object v0, p0, Landroid/support/v4/app/s$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 238
    invoke-static {v0}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_0

    .line 240
    iget-object v4, p0, Landroid/support/v4/app/s$2;->b:Ljava/util/Map;

    invoke-static {v4, v3}, Landroid/support/v4/app/s;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-static {v0, v3}, Landroid/support/v4/view/s;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 236
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method
