.class Lcom/roblox/client/components/RbxBirthdayPicker$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RbxBirthdayPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxBirthdayPicker;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/components/RbxBirthdayPicker;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 524
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 525
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    .line 526
    iput p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->d:I

    .line 527
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 573
    if-nez p2, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 578
    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 579
    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {v2}, Lcom/roblox/client/components/RbxBirthdayPicker;->h(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 580
    return-object v1

    :cond_0
    move-object v1, p2

    .line 576
    goto :goto_0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4

    .prologue
    .line 585
    if-nez p2, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 590
    :goto_0
    check-cast v0, Landroid/widget/TextView;

    .line 592
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 594
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 595
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->h(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    :goto_1
    return-object v0

    :cond_0
    move-object v0, p2

    .line 588
    goto :goto_0

    .line 599
    :cond_1
    if-eqz v1, :cond_2

    .line 600
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->i(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 604
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->i(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    .line 535
    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 546
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->e:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 550
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->e:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 560
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->d:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 564
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->d:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 540
    iput p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->e:I

    .line 541
    return-void
.end method
