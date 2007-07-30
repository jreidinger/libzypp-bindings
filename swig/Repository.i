
class Repository : private base::SafeBool<Repository>
{
public:
    Repository();
    static const Repository noRepository;

    typedef unsigned long NumericId;
    NumericId numericId() const;
    const ResStore & resolvables();
    const RepoInfo info() const;
    const std::list<packagedelta::PatchRpm> & patchRpms() const;
    const std::list<packagedelta::DeltaRpm> & deltaRpms() const;
};

