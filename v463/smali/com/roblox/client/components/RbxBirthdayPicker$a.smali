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
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxBirthdayPicker;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 555
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 556
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x0

    .line 550
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    .line 557
    iput p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->d:I

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 609
    :cond_0
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 620
    :cond_0
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {p3}, Lcom/roblox/client/components/RbxBirthdayPicker;->h(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 632
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .line 634
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 636
    iget-object p3, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 p4, -0x1

    .line 637
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 638
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxBirthdayPicker;->h(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 642
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxBirthdayPicker;->i(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxBirthdayPicker;->i(Lcom/roblox/client/components/RbxBirthdayPicker;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object p2
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 565
    iput-object p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 576
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->e:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 581
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->e:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 584
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 590
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    .line 591
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->d:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->b(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 595
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->d:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/components/RbxBirthdayPicker$a;->c(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 598
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .line 570
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 571
    iput p1, p0, Lcom/roblox/client/components/RbxBirthdayPicker$a;->e:I

    return-void
.end method
