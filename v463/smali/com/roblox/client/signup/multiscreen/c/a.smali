.class public Lcom/roblox/client/signup/multiscreen/c/a;
.super Lcom/roblox/client/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/c/a$a;
    }
.end annotation


# static fields
.field private static av:Lcom/roblox/client/signup/multiscreen/c/a$a;


# instance fields
.field private as:Lcom/roblox/client/components/RbxBirthdayPicker;

.field private at:Lcom/roblox/client/signup/multiscreen/e/b;

.field private au:Lcom/roblox/client/signup/multiscreen/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/a$1;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/a$1;-><init>()V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/c/a;->av:Lcom/roblox/client/signup/multiscreen/c/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    .line 39
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/a;->av:Lcom/roblox/client/signup/multiscreen/c/a$a;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->au:Lcom/roblox/client/signup/multiscreen/c/a$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/e/b;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->at:Lcom/roblox/client/signup/multiscreen/e/b;

    return-object p0
.end method

.method public static aq()Lcom/roblox/client/signup/multiscreen/c/a;
    .locals 1

    .line 32
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/a;-><init>()V

    return-object v0
.end method

.method private ar()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->at:Lcom/roblox/client/signup/multiscreen/e/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->as:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/c/a$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->au:Lcom/roblox/client/signup/multiscreen/c/a$a;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/components/RbxBirthdayPicker;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->as:Lcom/roblox/client/components/RbxBirthdayPicker;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/c/a;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/a;->ar()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 57
    sget p3, Lcom/roblox/client/o$g;->birth_date_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_birthday_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxBirthdayPicker;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/a;->as:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 60
    sget p3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_WhensYourBirthday:I

    invoke-virtual {p0, p3}, Lcom/roblox/client/signup/multiscreen/c/a;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxBirthdayPicker;->setTitle(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/a;->as:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/a;->p()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/roblox/client/o$c;->RbxBlack:I

    invoke-static {p3, v0}, Landroidx/core/a/b;->c(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxBirthdayPicker;->setTitleColor(I)V

    .line 63
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_birth_date_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 66
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_login_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/a$2;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/a$2;-><init>(Lcom/roblox/client/signup/multiscreen/c/a;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget p2, Lcom/roblox/client/o$f;->fragment_birth_date_continue_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/a$3;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/a$3;-><init>(Lcom/roblox/client/signup/multiscreen/c/a;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/a;->as:Lcom/roblox/client/components/RbxBirthdayPicker;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/a$4;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/a$4;-><init>(Lcom/roblox/client/signup/multiscreen/c/a;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxBirthdayPicker;->setRbxDateChangedListener(Lcom/roblox/client/components/e;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 146
    instance-of v0, p1, Lcom/roblox/client/signup/multiscreen/c/a$a;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lcom/roblox/client/signup/multiscreen/c/a$a;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a;->au:Lcom/roblox/client/signup/multiscreen/c/a$a;

    return-void

    :cond_0
    const-string v0, "birth_date_fragment"

    const-string v1, "Parent activity does not implement BirthDateFragment.OnFragmentInteractionListener!"

    .line 149
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 113
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    .line 115
    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/v;

    move-result-object v0

    const-class v1, Lcom/roblox/client/signup/multiscreen/e/b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/multiscreen/e/b;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->at:Lcom/roblox/client/signup/multiscreen/e/b;

    if-eqz p1, :cond_0

    const-string v1, "BirthYearBundleKey"

    const/4 v2, -0x1

    .line 118
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/b;->a(I)V

    .line 119
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->at:Lcom/roblox/client/signup/multiscreen/e/b;

    const-string v1, "BirthMonthBundleKey"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/b;->b(I)V

    .line 120
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->at:Lcom/roblox/client/signup/multiscreen/e/b;

    const-string v1, "BirthDayBundleKey"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/e/b;->c(I)V

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 3

    .line 126
    invoke-super {p0, p1}, Lcom/roblox/client/s;->e(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->at:Lcom/roblox/client/signup/multiscreen/e/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/b;->b()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget v1, v0, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    const-string v2, "BirthDayBundleKey"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget v1, v0, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    const-string v2, "BirthMonthBundleKey"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    iget v0, v0, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    const-string v1, "BirthYearBundleKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    .line 159
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/a;->av:Lcom/roblox/client/signup/multiscreen/c/a$a;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->au:Lcom/roblox/client/signup/multiscreen/c/a$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 140
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a;->at:Lcom/roblox/client/signup/multiscreen/e/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/b;->e()V

    return-void
.end method
